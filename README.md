# README

Deployment to AWS:

Youtube Link: https://www.youtube.com/watch?v=QY7CMFvh_h8

Deployed URL: ec2-13-56-156-166.us-west-1.compute.amazonaws.com

Create Dockerfile and place under same directory as Gemfiles

docker build -t aws_photosite .

To verify image after build:
docker images --filter reference=aws_photosite 

Run docker image locally:
docker run -p 3000:3000 aws_photosite

Create repository on ECR name it photosite
aws ecr get-login-password - - region us-west-1 | docker login –username AWS –password-stdin *userid*.dkr.ecr.us-west-1.amazonaws.com

Find docker image to push
docker images

Tag the image that needs to be pushed
docker tag *IMAGE_ID* *userid*.dkr.ecr.us-west-1.amazonaws.com/photosite:latest

Push the image to AWS Registery 
docker push *userid*.dkr.ecr.us-west-1.amazonaws.com/photosite:latest

Create task definition, instance and S3 bucket

Run and connect to instance for complete deployment
