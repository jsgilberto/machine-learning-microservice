[![jsgilberto](https://circleci.com/gh/jsgilberto/machine-learning-microservice.svg?style=svg)](https://github.com/jsgilberto/machine-learning-microservice)

# Machine Learning Microservice w/ Kubernetes

## Description

A Machine Learning Microservice with a model that has been trained to
predict housing prices in Boston according to several features.

The model is served through an endpoint in a Flask app.

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
