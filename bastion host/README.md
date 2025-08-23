I recently implemented a setup to securely connect to a private EC2 instance in AWS using a bastion host.

The process started by creating a VPC with both a public and a private subnet. The public subnet hosted the bastion EC2 instance, which had internet access through an attached Internet Gateway. The private EC2 instance was placed in the private subnet with no direct internet access for security reasons.

Each instance used a separate key pair — one for the bastion host and another for the private instance. I first connected to the bastion host from my local machine. Then, I securely transferred the private key file to the bastion host.

Once inside the bastion, I was able to SSH into the private EC2 instance using its internal IP. This setup acts as a secure gateway, allowing controlled access to private resources within the VPC while keeping them isolated from public exposure.

This approach is a best practice when managing infrastructure that requires both accessibility and security within AWS environments.

![WhatsApp Image 2025-08-23 at 17 48 10_c4a22eb8](https://github.com/user-attachments/assets/5c6492be-d8af-4697-a06c-899577a15e29)
![WhatsApp Image 2025-08-23 at 17 48 10_8df83029](https://github.com/user-attachments/assets/0c46427b-e856-4674-8876-608cd2bda356)
![WhatsApp Image 2025-08-23 at 17 48 11_bece77a3](https://github.com/user-attachments/assets/6ffd95ae-050d-447b-a5a6-2179341de79b)
![WhatsApp Image 2025-08-23 at 17 48 11_0b2d1087](https://github.com/user-attachments/assets/0a30a2d8-4472-4050-ba98-e31c124dea50)
![WhatsApp Image 2025-08-23 at 17 48 12_c2e2a3a2](https://github.com/user-attachments/assets/dc2fb042-0a3f-44d7-a022-1e9746bf2eb0)
![WhatsApp Image 2025-08-23 at 17 48 13_46679030](https://github.com/user-attachments/assets/8400de4a-8ef5-4a6f-a2c5-9042b0118abc)
![WhatsApp Image 2025-08-23 at 17 48 13_0f3be9bc](https://github.com/user-attachments/assets/d9cc0772-6476-41ac-be42-921228e1f7c9)
![WhatsApp Image 2025-08-23 at 17 48 14_21c91a3a](https://github.com/user-attachments/assets/36cf2c1c-1b52-470d-ab51-0ecd365cf888)
![WhatsApp Image 2025-08-23 at 17 48 14_7bee52ac](https://github.com/user-attachments/assets/763f03ca-a050-4a9f-b802-517bbdb75aa7)
