import boto3
import json

sqs_client = boto3.client('sqs')


def get_message_from_queue(queue_url):
    response = sqs_client.receive_message(
        QueueUrl=queue_url,
        MaxNumberOfMessages=1
    )
    if response.get('Messages'):
        for message in response['Messages']:
            body = json.loads(message['Body'])
            return body, message['ReceiptHandle']
    else:
        return None, None


def push_message_to_next_queue(queue_url, body):
    response = sqs_client.send_message(
        QueueUrl=queue_url,
        MessageBody=json.dumps(body, default=str),
    )


def delete_message_from_queue(queue_url, receipt_handle):
    response = sqs_client.delete_message(
        QueueUrl=queue_url,
        ReceiptHandle=receipt_handle
    )
