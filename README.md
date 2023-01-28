# Final project after DevOps courses

## Notable features:

* A simple Go server/microservice [docker-gs-ping](https://github.com/olliefr/docker-gs-ping/).
* Includes a multi-stage Dockerfile, which actually is a good example of how to build Go binaries for production releases.
* Use Terraform to deploy EC2 insatnce in AWS.
* Monitoring Promeneus/Grafana.
* Has a CI pipeline using GitHub Actions to run tests in independent containers.
* Has a CD pipeline using GitHub Actions to publish to Docker Hub and AWS EC2 instance.


## Usage

If you want to use this project locally or use GitHub Actions you need to add some variables in system or GitHub repository:

*  AWS_ACCESS_KEY_ID: The AWS access key to use. 
*  AWS_SECRET_ACCESS_KEY: The AWS secret key that corresponds to the access key.
*  SSH_PRIVATE_KEY: SSH-KEY that you use to prove your identity when connecting to an Amazon EC2 instance.
*  DOCKERHUB_USERNAME: Docker ID as value.
*  DOCKERHUB_TOKEN: Docker Hub personal access tokens as alternatives to your password.