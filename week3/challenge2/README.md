### Week 3

### Challenge 2 steps:

#### 1.Create two new Security Groups with these conditions:

SG: 
<b>efs-from-ec2-wp</b>(Inbound Port NFS to ec2-wp group);      
<b>ec2-wp</b>(Inbound ALL Ports from alb-wp);      
<b>alb-wp</b>(Inbound 80 and 443);     


#### 2.Create a new EFS with these config:
<b>Name</b>: lab-especial-wordpress        
<b>Availability and Durability</b>: Regional       
<b>Performance Mode</b>: General Purpose       
<b>Througputh Mode</b>: Bursting       
At Network Access, allow all AZs to SG efs-from-ec2-wp;     

#### 3.Create a new MySQL database with these config:


