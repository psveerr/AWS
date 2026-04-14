# AWS Infrastructure and Kubernetes Deployment using Terraform

This project provisions AWS infrastructure using Terraform and deploys containerized microservices on Kubernetes. It follows a modular approach for infrastructure and integrates Kubernetes manifests for application deployment.

## Overview

The project automates the creation of core AWS resources and provides Kubernetes configuration to deploy microservices. It is designed to demonstrate end-to-end infrastructure provisioning along with application deployment.

## Infrastructure Components

The Terraform configuration provisions:

- Virtual Private Cloud (VPC)  
- Subnets and networking components  
- EC2 instances  
- EKS cluster (Elastic Kubernetes Service)  

## Kubernetes Deployment

- Kubernetes manifests are defined in the `k8s/` directory  
- Microservices are deployed using `microservices.yaml`  
- Designed to run on the provisioned EKS cluster  

## Project Structure

```
Google_microservies/
├── k8s/
│   └── microservices.yaml
├── modules/
│   ├── ec2/
│   ├── eks/
│   └── vpc/
├── main.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars
├── variables.tf
```

## Prerequisites

- AWS account with required permissions  
- Terraform installed  
- AWS CLI installed and configured  
- kubectl installed  

## Setup

1. Clone the repository:
   ```
   git clone <repository-url>
   cd Google_microservices
   ```

2. Configure AWS credentials:
   ```
   aws configure
   ```

3. Initialize Terraform:
   ```
   terraform init
   ```

4. Validate configuration:
   ```
   terraform validate
   ```

5. Plan infrastructure:
   ```
   terraform plan
   ```

6. Apply configuration:
   ```
   terraform apply
   ```

## Kubernetes Deployment

After infrastructure is created and EKS is configured:

1. Update kubeconfig:
   ```
   aws eks --region <region> update-kubeconfig --name <cluster-name>
   ```

2. Deploy microservices:
   ```
   kubectl apply -f k8s/microservices.yaml
   ```

3. Verify deployment:
   ```
   kubectl get pods -A
   ```

## Outputs

Terraform provides outputs such as:

- Cluster details  
- EC2 instance information  
- VPC configuration  

## Cleanup

To destroy all infrastructure:

```
terraform destroy
```
