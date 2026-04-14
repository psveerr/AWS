output "jenkins_ip" {
  value = module.ec2.public_ip
}

output "cluster_name" {
  value = module.eks.cluster_name
}