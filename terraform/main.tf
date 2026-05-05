resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block             = "10.0.1.0/24"
  map_public_ip_on_launch = true
}


resource "aws_security_group" "eks_sg" {
  vpc_id = aws_vpc.main.id
}

resource "aws_eks_cluster" "main" {
  name     = var.cluster_name
  role_arn = "YOUR_EKS_ROLE_ARN"

  vpc_config {
    subnet_ids = [aws_subnet.public_subnet.id]
  }
}