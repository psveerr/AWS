# Google Microservices Cloud Deployment on AWS with Terraform

## Overview

This project provisions a production-style cloud infrastructure on Amazon Web Services using Terraform to deploy the Google Microservices Demo application on Amazon Elastic Kubernetes Service.

The infrastructure is designed to support a cloud-native CI/CD workflow integrated with GitLab, Docker, Kubernetes, and Helm.

---

## Architecture

```text
Developer Push
      ↓
GitLab CI/CD Pipeline
      ↓
Docker Image Build
      ↓
GitLab Container Registry
      ↓
Terraform Provisions AWS Infrastructure
      ↓
Amazon EKS Cluster
      ↓
Helm Deploys Microservices
```

---

## Infrastructure Provisioned

This Terraform project automatically creates:

* Virtual Private Cloud (VPC)
* Public and Private Subnets
* Internet Gateway
* NAT Gateway
* Route Tables
* Security Groups
* Amazon EKS Cluster
* Managed Node Group
* IAM Roles and Policies

---

## Tech Stack

* Terraform
* AWS
* Amazon EKS
* Kubernetes
* Helm
* Docker
* GitLab CI/CD

---

## Project Structure

```bash
terraform-eks/
├── provider.tf
├── versions.tf
├── variables.tf
├── main.tf
├── outputs.tf
```

---

## Prerequisites

Before running this project, install:

* AWS CLI
* Terraform
* kubectl
* Helm

Also configure AWS credentials:

```bash
aws configure
```

---

## Deployment Steps

### 1. Clone Repository

```bash
git clone <repository-url>
cd terraform-eks
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Preview Infrastructure

```bash
terraform plan
```

### 4. Provision Infrastructure

```bash
terraform apply
```

Type:

```bash
yes
```

when prompted.

---

## Connect to EKS Cluster

After deployment:

```bash
aws eks update-kubeconfig --region ap-south-1 --name microservices-eks
```

Verify cluster:

```bash
kubectl get nodes
```

---

## Deploy Application

Deploy microservices using Helm:

```bash
helm upgrade frontend ./microservices-demo
```

Check running pods:

```bash
kubectl get pods
```

---

## Destroy Infrastructure

To avoid AWS charges:

```bash
terraform destroy
```

---

## Features

* Infrastructure as Code
* Automated Kubernetes Cluster Provisioning
* Scalable Worker Nodes
* Cloud-native Deployment Architecture
* CI/CD Ready
* Production-style Networking Setup

---

## Learning Outcomes

Through this project, the following skills were demonstrated:

* Cloud Infrastructure Provisioning
* Kubernetes Cluster Management
* Infrastructure Automation
* Container Orchestration
* CI/CD Integration
* Production Debugging and Deployment Strategies

---

## Author

**Veer Pratap Singh**

DevOps | Cloud | Platform Engineering
