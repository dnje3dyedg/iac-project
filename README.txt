# IaC Project - AWS Infrastructure using Terraform

 Overview
This project provisions cloud infrastructure using Terraform.

 Resources Created
- VPC with 2 subnets (multi-AZ)
- EC2 instance
- RDS MySQL database
- Security Groups

 Tools Used
- Terraform
- AWS
- OPA (Policy-as-Code)

 Steps to Run

1. Configure AWS:
   aws configure

2. Initialize:
   terraform init

3. Plan:
   terraform plan

4. Apply:
   terraform apply

 Architecture
User → EC2 → RDS (inside VPC)

 Features
- Modular structure
- Remote state (S3 + DynamoDB)
- Policy enforcement (OPA)

 
