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
Create Autoscaling group, attach the launch template ,provide min, max, desired insatnces, attach target group and provide the scaling policy as dynamic policy (rule =average CPU utilization percentage >90)
