I recently implemented a setup to securely connect to a private EC2 instance in AWS using a bastion host.

The process started by creating a VPC with both a public and a private subnet. The public subnet hosted the bastion EC2 instance, which had internet access through an attached Internet Gateway. The private EC2 instance was placed in the private subnet with no direct internet access for security reasons.

Each instance used a separate key pair — one for the bastion host and another for the private instance. I first connected to the bastion host from my local machine. Then, I securely transferred the private key file to the bastion host.

Once inside the bastion, I was able to SSH into the private EC2 instance using its internal IP. This setup acts as a secure gateway, allowing controlled access to private resources within the VPC while keeping them isolated from public exposure.

This approach is a best practice when managing infrastructure that requires both accessibility and security within AWS environments.

