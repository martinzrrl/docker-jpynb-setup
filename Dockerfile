# Downloads base image as starting point from Docker Hub
FROM jupyter/base-notebook


# Specify working directory inside container
WORKDIR /code


# Install Python dependencies
## Copy requirements.txt to container
COPY ./requirements.txt ./

## Install dependencies specified in requirements.txt using dockers
RUN pip install --no-cache-dir -r requirements.txt


# Copy files of active folder from local machine to active folder of container
COPY ./ ./


# Run command CMD[] is not needed as specified in base image