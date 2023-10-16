AWS Auto Scaling Group (ASG) Terraform module
Terraform module which creates Auto Scaling resources on AWS.
VPC Module:
	• Create VPC
	• Create Internet Gateway and attach to created VPC
	• Create subnets (2 for ALB and one for application in multiple availability zones)
	• Update route table by adding internet gateway to all the subnets
Target Group Module:
	•  Create target group under listeners and routing
Launch Template Module
Now create a launch template, choose the created AMI and click create
ALB Module
	• Create application load balancer
		○ Choose our VPC under network
		○ Choose 2 subnets in diff availability zones
		○ Create security group and Add security group to our VPC to allow http traffic
AutoScaling Group Module
	• Create Autoscaling group, attach the launch template ,provide min, max, desired insatnces, attach target group and provide the scaling policy as dynamic policy (rule =average CPU utilization percentage >90)
Testing Autoscaling Group:
	• provide the endpoint of Load Balancer and validate the request in postman
	• Create a test to generate more traffic and check if the instances are getting auto scaled based on the scaling policies

Data Backup and Disaster Recovery Plan:
	• Go to AWS backup service 
	• Created a backup plan in AWS 
		○ Created an RDS MySQL DB instance and connected to my DB through MySQL work bench client and created few SQL queries 
		○ Created backup rule where we can mention our backup frequency if it is daily, weekly, time duration,
		○ Assign the resources where i assigned my ec2 instance, EBS volume, my RDS MySQL instance
		○ Backup was successfully got completed for all the assigned resources
	• Enabled versioning under bucket properties tab for my s3 bucket
	• Added lifecycle rules under bucket management tab gave storage class for object transition and expiration  rules
	• Added Configured cross region replication under bucket management tab by adding cross region replication rules and by creating bucket in another region , and gave all the details while creating the cross region replication configuration.
	• I have validated by uploading a object in s3 bucket and my objected and backing up to my destination region
![image](https://github.com/tgrahesh/terraform-autoscaling/assets/115626638/e58a1555-3ed5-4655-86ca-14e66ba13e32)
