*In development, please be patience.*

### Week 3

### Challenge 1 steps:

```sh
git clone https://github.com/henrylle/bia.git .
```
##### Run file rodar_app_local_unix.sh, this will be install a new database and other node commands after build the appropriated container image;
##### Create a new AWS User called dev wih the following attached policies:
```sh
AmazonEC2ContainerRegistryFullAccess
AmazonECSFullAccess
```
##### Create a new access key and copy the credentials;
##### Configure a new profile with the command bellow and add the credentials:
```sh
aws configure --profile bia
```
##### Create a new security group called bia-web with inbound to 80(ALL) and 22(YOURSELF) port, and bia-db with inbound to 5432 port and allow only bia-web security group;
##### Create a new free tier database PostgreSQL(please use standard mode), db.t3.micro, 20gb storage, turn off performance insights and set the bia-db security group;
> Save the PostgreSQL password in a safe place.
> Disable::: Enable Storage Autoscaling, Performance Insigts. 
##### Create a new ECR repo called bia;
##### Build the container image using Dockerfile cloned above, and push to ECR repository;
##### Prepare build.sh and deploy.sh file according to your necessity;
##### Execute build.sh file;
##### Execute deploy.sh file;




### Challenge 2 steps:

### Challenge 3 steps:


