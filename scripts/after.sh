### before ###
#!/bin/bash

#### docker-compose up ####
cd /home/ec2-user/dockernodejs
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 503876532172.dkr.ecr.us-east-1.amazonaws.com
docker-compose down
#docker-compose build --no-cache
docker-compose up --build -d

