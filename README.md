# Node.js Application Demo

This repository contains a sample Node.js application used for containerization purposes.

The basic nodejs application was cloned from https://github.com/hashicorp/demo-app-nodejs

I built the code and packaged in a docker image, pushed it to my private docker repository.

Run the command below to connect to the private docker repository. Note that the value of $secretname should be the same as the value provided in the ImagePullSecrets name in the nodejs-demo.yamlfile

 kubectl create secret docker-registry --dry-run=client $secretname --docker-server=https://index.docker.io/v1/ --docker-username=$username --docker-password=$password --docker-email=$email