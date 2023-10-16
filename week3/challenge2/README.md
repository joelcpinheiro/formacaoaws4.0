### Week 3

### Challenge 2 steps:

#### 1.Create two new Security Groups with these conditions:

SG: 
<b>efs-from-ec2-wp</b>(Inbound Port NFS to ec2-wp group);      
<b>ec2-wp</b>(Inbound ALL Ports from alb-wp);      
<b>alb-wp</b>(Inbound 80 and 443 ports);     
<b>db-wp</b>(Inbound 3306 port from ec2-wp).

#### 2.Create a new EFS with these config:
<b>Name</b>: lab-especial-wordpress        
<b>Availability and Durability</b>: Regional       
<b>Performance Mode</b>: General Purpose       
<b>Througputh Mode</b>: Bursting       
At Network Access, allow all AZs to SG efs-from-ec2-wp;     

#### 3.Create a new MySQL database with these config:
<b>MySQL</b> Database, version 5.7.34;      
<b>Template</b> of type free tier;      
<b>Database Name</b> lab-especial;      
<b>Auto Generate Password</b>;      
<b>DB Instance class</b>:db.t2.micro;       
<b>Allocated storage</b> 20GB;      
<b>VPC Default</b>;
<b>Initial Database Name:</b>wordpress;     
<b>Backup retention period:</b>1 day;       
And finally, click on <b>create database</b> button.        
Don't forget to save your database password in a safe place.

#### 4.Create a new ECS Cluster with these config:
<b>At ECS, click on Create Cluster:</b>     
Select cluster template, choose <b>EC2 Linux + Networking</b> option;       
<b>Cluster name</b>:cluster-lab-epsecial-wordpress;     
<b>EC2 instance type</b>:t2.micro;      
<b>Number of instances</b>:1;       
<b>Key pair:</b>your keypar;        
<b>VPC Default</b>      
<b>Select ALL subnets(same of EFS and Instances</b>;      
Select Security Group <b>ec2-wp</b>;        
And finally, click on <b>create</b> button;     

Create a new <b>Task Definition</b> 
Select launch type compatibility:EC2;       
<b>Task definition name</b>:task-def-lab-wordpress;     
Click on <b>Add container</b> button with these info:       
<b>Container name:</b> wordpress;               
<b>Image:</b>wordpress:latest;      
<b>Memory Limit(Mib):<b>Soft limit: 400;        






