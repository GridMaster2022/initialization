import copy
import logging
import os
import sys
from signal import signal, SIGINT
import time
import boto3
import json

from credentials import get_secret
from rds_handler import SqlHandler
from initialization import initialize
from helper import get_message_from_queue, push_message_to_next_queue, delete_message_from_queue
from config import *

if logging.getLogger().hasHandlers():
    logging.getLogger().setLevel(logging.INFO)
else:
    logging.basicConfig(level=logging.INFO,
                        format="[%(asctime)s] %(levelname)s [%(name)s.%(funcName)s:%(lineno)d] %(message)s")
s3_client = boto3.client('s3')
sns_client = boto3.client('sns')


def handler(signal_received, frame):
    # Handle any cleanup here
    logging.info('SIGINT or CTRL-C detected. Exiting gracefully')
    sys.exit(0)


def main(db_secret):
    total_timeout_time = 0
    sql_handler = SqlHandler(db_secret)
    while True:
        body, receipt_handle = get_message_from_queue(INIT_QUEUE_URL)
        if not body:
            # There is no message in the queue, wait and try again
            logging.info('Queue is empty, waiting for 5 seconds')
            time.sleep(5)
            if total_timeout_time > CONTAINER_TIMEOUT:
                # If no messages received for timeout limit, exit container/loop
                logging.info('Container timeout exceeded, shutting down')
                RUNNING = False
                break
            total_timeout_time += 5
            continue
        total_timeout_time = 0
        initialize(body['scenarioUuid'], BUCKET_NAME)
        logging.info(f"ScenarioUuid {body['scenarioUuid']} initialized")
        body['calculationState'] = 'scenarioInitialized'
        with open('sql/update_scenario.sql', 'r') as f:
            sql_stmt = f.read()
        delete_message_from_queue(INIT_QUEUE_URL, receipt_handle)
        for year in [2025, 2030, 2035, 2040, 2045, 2050]:
            temp_body = copy.deepcopy(body)
            temp_body['scenarioYear'] = year
            temp_body['bucketFolder'] = body['scenarioUuid'] + '/' + str(year) + '/'
            temp_body['baseEsdlLocation'] = body['scenarioUuid'] + '/' + str(year) + '/base.esdl'
            temp_body['contextScenarioLocation'] = body['scenarioUuid'] + '/' + str(year) + '/contextScenario.json'
            temp_body['etmResultLocation'] = temp_body['bucketFolder'] + 'etm_result.tar.gz'
            temp_body['updatedEsdlLocation'] = temp_body['bucketFolder'] + 'updatedEsdl.esdl'
            temp_body['essimExportGasunieLocation'] = temp_body['bucketFolder'] + 'essimResultGasunie.tar.gz'
            temp_body['essimExportTennetLocation'] = temp_body['bucketFolder'] + 'essimResultTennet.csv.gz'
            scenario_id = sql_handler.generic_fetchall('SELECT scenarioId FROM scenario_overview WHERE \
                scenarioUuid = "{}" AND scenarioYear = {}'.format(temp_body['scenarioUuid'], temp_body['scenarioYear']))
            temp_body['scenarioId'] = scenario_id['scenarioId']
            sql_handler.update_scenario_state(sql_stmt, [temp_body])
            push_message_to_next_queue(ETM_QUEUE_URL, temp_body)
    sys.exit()


if __name__ == '__main__':
    secret = get_secret(DATABASE_SECRET_NAME)
    signal(SIGINT, handler)

    main(secret)
