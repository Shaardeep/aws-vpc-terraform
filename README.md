# aws-vpc-terraform

# AWS 3-Tier VPC Architecture using Terraform

This project provisions a production-ready AWS VPC infrastructure using Terraform.

## 📌 Overview

The infrastructure includes:

- Custom VPC
- Public and Private Subnets (Multi-AZ)
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- EC2 Instances
- Application Load Balancer

This setup follows a basic 3-tier architecture approach:
- Public subnet → Load Balancer
- Private subnet → Application Servers
- Database subnet

---

## 🏗️ Architecture Components

### Networking
- VPC with custom CIDR block
- 2 Public Subnets
- 2 Private Subnets
- Internet Gateway for public access
- NAT Gateway for private subnet outbound internet access
- Route tables properly associated

### Security
- Security groups with least privilege principle
- SSH allowed only from trusted IP
- HTTP/HTTPS allowed via Load Balancer

### Compute
- EC2 instances deployed in private subnet
- ALB deployed in public subnet

---

## 🛠️ Tools Used

- Terraform
- AWS EC2
- AWS VPC
- AWS ALB
- AWS IAM

---

## 📂 Project Structure

├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
└── modules/
├── vpc/
├── ec2/
├── alb/

---

## ⚙️ Key Features

- Modular Terraform structure
- Reusable VPC module
- Parameterized variables
- Environment ready structure (dev/prod)
- Infrastructure as Code best practices

---

## 🔐 Security Considerations

- Private EC2 instances not publicly accessible
- Controlled inbound rules
- IAM roles used instead of hardcoded credentials

---

## 📊 Real-World Use Case

This infrastructure can be used for:
- Hosting containerized applications
- Deploying Node.js or Python backend
- Scalable web applications
- Production-grade cloud setup

---

## 🚀 Learning Outcomes

- Hands-on VPC networking
- Route table associations
- NAT vs IGW understanding
- Modular Terraform design
- Infrastructure lifecycle management


