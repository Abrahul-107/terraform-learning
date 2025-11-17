# Terraform - Production-Ready Template

This is a **clean, secure, and production-grade Terraform template** to create an AWS S3 bucket following AWS best practices.

### Current Features (Fully Implemented)
- Globally unique bucket name (via variable)
- Private bucket (public access blocked)
- Versioning enabled
- Server-side encryption with AWS KMS (custom key)
- Lifecycle rules (optional, configurable)
- Bucket logging (optional, to a separate logging bucket)
- Force destroy disabled by default (safety first)
- Proper IAM policies for bucket and KMS key
- Complete variables, outputs, and examples
- Ready for remote backend (S3 + DynamoDB) – just uncomment

Perfect for learning, interviews, or using as a secure base in real projects.

---

## Project Status: 🚧 Work in Progress 🚀

This repository is **actively being developed**.  
A lot more hands-on, production-ready Terraform modules are coming soon, including:

- VPC & Subnets (multi-AZ)
- EC2 with ASG & Load Balancer
- RDS (PostgreSQL/MySQL) with Multi-AZ
- EKS Cluster
- Complete CI/CD pipelines
- Security-focused modules (Security Groups, WAF, GuardDuty)
- And many more real-world examples!

**Star & Watch this repo** to get updates as new modules drop!

---

## Prerequisites

- Terraform ≥ 1.6
- AWS CLI configured (`aws configure`) or valid credentials in environment
- Basic knowledge of Terraform

---

## Quick Start (Clone & Deploy in < 5 minutes)

```bash
# 1. Clone the repo
git clone https://github.com/Abrahul-107/terraform-learning.git
cd terraform-learning

# 2. Initialize
terraform init

# 3. Review the plan
terraform plan

# 4. Apply
terraform apply
# Type "yes" when prompted
