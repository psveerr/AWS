Path Based Routing using Application Load Balancer (ALB)
Objective:
 Route HTTP traffic using an Application Load Balancer so that:
http://<ALB-DNS>/route is forwarded to Target Group A
http://<ALB-DNS>/ (just the domain) is forwarded to Target Group B
Key Concepts:
ALB (Application Load Balancer):
 Layer 7 load balancer that routes traffic based on content (like path).
Target Groups:
 Collections of EC2 instances. One for /route, and another for /.
Listeners:
 Process on ALB that checks for incoming traffic (e.g., HTTP on port 80).
Routing Rules:
 Direct specific path patterns (like /route) to matching target groups.
NSG (Security Groups):
 Acts as a firewall. Must allow HTTP traffic from ALB to EC2 instances.
Nginx (optional):
 Can be used inside EC2 to serve custom responses for / and /route.
Steps to Set Up Path-Based Routing:
Launch Two EC2 Instances:
One instance will serve the root path /
The other will serve /route
Install Nginx or any HTTP server with different content on each
Create Two Target Groups:
Target Group A: Register the instance for /route
Target Group B: Register the instance for /
Create an ALB:
Choose Application Load Balancer, internet-facing
Select two or more subnets (multi-AZ)
Assign a security group that allows inbound HTTP (port 80)
Configure Listener and Rules:
Listener: HTTP on port 80
Add two routing rules:
If path is /route, forward to Target Group A
If path is / (default), forward to Target Group B
Test the Routing:
Open in browser:
http://<ALB-DNS>/route → should show content from Target Group A
http://<ALB-DNS>/ → should show content from Target Group B

![WhatsApp Image 2025-08-23 at 17 57 11_739002ba](https://github.com/user-attachments/assets/5a1a5e09-4e27-433c-b001-ec6f19c7c20f)
![WhatsApp Image 2025-08-23 at 17 57 11_21404416](https://github.com/user-attachments/assets/27a8d112-f1a1-4639-afdc-51ed094ae3aa)
![WhatsApp Image 2025-08-23 at 17 57 10_35ae6d2e](https://github.com/user-attachments/assets/ec2568a6-ebed-45d1-a588-b9f5895137f9)
![WhatsApp Image 2025-08-23 at 17 57 10_fcd8402b](https://github.com/user-attachments/assets/dadbf6cc-0c50-47a1-b6ff-93f94a4d4235)
![WhatsApp Image 2025-08-23 at 17 57 10_f1393896](https://github.com/user-attachments/assets/059f2069-100e-461e-ab07-0652b18a5117)
![WhatsApp Image 2025-08-23 at 17 57 09_8c720340](https://github.com/user-attachments/assets/f3219d1c-9b85-42ca-b031-18af3e12cb54)
