resource "aws_instance" "jenkins" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.medium"

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install docker -y
              service docker start
              usermod -aG docker ec2-user

              yum install -y java-17-amazon-corretto
              wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
              rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
              yum install -y jenkins
              systemctl start jenkins
              systemctl enable jenkins

              curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
              install minikube-linux-amd64 /usr/local/bin/minikube
              EOF
}