# Stage 1: Build the main Poetry image.
ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}-slim as main

ARG POETRY_VERSION
ARG POETRY_INSTALLER_URL="https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py"
ENV POETRY_HOME="/opt/poetry"
ENV PATH="$PATH:$POETRY_HOME/bin"
ENV POETRY_VIRTUALENVS_IN_PROJECT=1

RUN apt-get -qq update && \
    apt-get install --no-install-recommends -qq curl gcc git build-essential linux-libc-dev gfortran libopenblas-dev liblapack-dev && \
    curl -sSL ${POETRY_INSTALLER_URL} | python3 - --version ${POETRY_VERSION} && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD ["python3"]

# Stage 2: Test the main Poetry image.
FROM main
ARG POETRY_VERSION

RUN if [ "${POETRY_VERSION}" != "1.0.10" ]; then \
    python3 --version && \
    poetry --version && \
    poetry about && \
    poetry init -n && \
    poetry add httpie \
    ;fi

# Stage 3: Use the main Poetry image as the final image to be exported.
FROM main

RUN mkdir /code
WORKDIR /code
ADD ./poetry.lock poetry.lock
ADD ./pyproject.toml pyproject.toml

# Stage 4: Project init
RUN poetry config virtualenvs.create false \
  && poetry install --no-dev --no-interaction --no-ansi

ADD ./app /code

ENV CONTAINER_TIMEOUT="30"
ENV AWS_DEFAULT_REGION="eu-central-1"
ENV INIT_QUEUE_URL="https://sqs.eu-central-1.amazonaws.com/{AWS_ACCOUNT_NR}/gridmaster_init_queue"
ENV ETM_QUEUE_URL="https://sqs.eu-central-1.amazonaws.com/{AWS_ACCOUNT_NR}/gridmaster_etm_api_queue"
ENV BUCKET_NAME="BUCKET_NAME_PLACEHOLDER"
ENV DATABASE_SCHEME_NAME="SCHEMA_PLACEHOLDER"
ENV DATABASE_SECRET_NAME="DATABASE_SECRET_NAME_placeholder"
ENV SNS_FANOUT_ARN="arn:aws:sns:eu-central-1:{AWS_ACCOUNT_NR}:gridmaster_post_processing_fanout"


CMD python main.py