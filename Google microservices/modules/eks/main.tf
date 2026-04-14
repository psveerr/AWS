resource "aws_eks_cluster" "cluster" {
  name     = "demo-cluster"
  role_arn = var.eks_role_arn

  vpc_config {
    subnet_ids = [var.subnet_id]
  }
}

resource "aws_eks_node_group" "nodes" {
  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = "demo-nodes"
  node_role_arn   = var.node_role_arn

  subnet_ids = [var.subnet_id]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }
}