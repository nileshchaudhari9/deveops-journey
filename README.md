# Devops-journey

This is a FastAPI project that demonstrates a simple API.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Local Development](#local-development)
  - [Setting up Python Virtual Environment](#setting-up-python-virtual-environment)
  - [Installing Requirements Locally](#installing-requirements-locally)
  - [Running the API Locally](#running-the-api-locally)
- [Dockerization](#dockerization)
  - [Building a Docker Image](#building-a-docker-image)
  - [Running the API using Docker Container](#running-the-api-using-docker-container)

## Prerequisites

Before getting started, make sure you have the following prerequisites installed on your system:

- Python 3.9 or higher
- Docker (if you want to run the application in a container)

## Local Development

### Setting up Python Virtual Environment

It's a good practice to use a Python virtual environment to isolate your project's dependencies. To create and activate a virtual environment, follow these steps:

```shell
# Create a virtual environment (replace 'myenv' with your preferred name)
python -m venv myenv

# Activate the virtual environment
# On Windows:
myenv\Scripts\activate
# On macOS and Linux:
source myenv/bin/activate
```

### Installing Requirements Locally
```shell
pip install -r requirements.txt
```

### Running the API Locally
```shell
 uvicorn server:app --reload --app-dir ./app
```

### Building a Docker Image
```shell
 docker build -t [image-tag] .
```

### Running the API using Docker Container
```shell
 docker run -d -p 8000:8000 [image-tag]
```

### Deploying release using HELM Chart
```shell
 helm install [your-release-name] ./helm/api-chart/ 
```

