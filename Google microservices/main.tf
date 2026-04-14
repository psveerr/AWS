module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source            = "./modules/ec2"
  subnet_id         = module.vpc.subnet_id
  security_group_id = module.vpc.sg_id
}

module "eks" {
  source        = "./modules/eks"
  subnet_id     = module.vpc.subnet_id
  eks_role_arn  = var.eks_role_arn
  node_role_arn = var.node_role_arn
}

resource "null_resource" "kubeconfig" {
  depends_on = [module.eks]

  provisioner "local-exec" {
    command = "aws eks update-kubeconfig --name demo-cluster --region ap-south-1"
  }
}

resource "null_resource" "deploy_app" {
  depends_on = [null_resource.kubeconfig]

  provisioner "local-exec" {
    command = "kubectl apply -f k8s/microservices.yaml"
  }
}

resource "helm_release" "monitoring" {
  depends_on = [null_resource.kubeconfig]

  name       = "monitoring"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
}