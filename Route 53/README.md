Hosting Domain using Route 53 and establish path-based and host header-based routing
Routing Side
Buy a domain from a registrar like GoDaddy, Namecheap, or Hostinger
 Go to Route 53 and create a hosted zone for your domain
 Copy the NS (Name Server) records from Route 53
 Update the NS records in your domain registrar to point to the Route 53 hosted zone
 Request an SSL certificate using AWS Certificate Manager (ACM)
 Add domain.com and *.domain.com while requesting the certificate
 To validate the SSL certificate, add the CNAME record provided by ACM in your Route 53 hosted zone
Application Side
Launch EC2 instances and install Nginx or any web server
 Make sure the application listens on specific ports (such as 80, 7764, or 9097)
 Create target groups in the EC2 dashboard
 Register the EC2 instances in their respective target groups with the correct port and health check settings
Rules Side (ALB)
Create an Application Load Balancer (ALB)
 Choose internet-facing and select at least two Availability Zones
 Select the same VPC where your EC2 instances are hosted
 Attach a security group to the ALB that allows HTTP (port 80) and HTTPS (port 443) traffic
Configure Listeners
Listener on HTTP (port 80):
 Set a default rule to forward traffic
 Add custom rules for path-based or host header-based routing
 Add a rule to redirect all HTTP traffic to HTTPS
Listener on HTTPS (port 443):
 Attach the SSL certificate from ACM
 Set a default rule to forward traffic
 Add custom rules for path-based and host header-based routing
DNS Record
In the Route 53 hosted zone, create an A record that maps your domain to the ALB DNS name using alias
 This ensures the domain routes to the ALB and follows all the configured rules for HTTPS, path-based, and host-based routing

 ![WhatsApp Image 2025-08-23 at 17 52 57_c2286d88](https://github.com/user-attachments/assets/adc2cb62-26b2-442b-909f-4fd2b41bc2f6)
![WhatsApp Image 2025-08-23 at 17 52 57_93f7c8bb](https://github.com/user-attachments/assets/1942e472-043a-4f26-979d-5b5450740cd2)
![WhatsApp Image 2025-08-23 at 17 52 56_1b321f19](https://github.com/user-attachments/assets/53aab513-ef49-4b59-8d6c-afad132b8b79)
![WhatsApp Image 2025-08-23 at 17 52 56_115f1298](https://github.com/user-attachments/assets/5ffc0acd-82a0-4ae2-ae60-d4639edd992f)
![WhatsApp Image 2025-08-23 at 17 52 56_ff9900f4](https://github.com/user-attachments/assets/43d0b69f-95b9-4cf2-8d66-fb501a7a6ff1)
![WhatsApp Image 2025-08-23 at 17 52 56_6551a22b](https://github.com/user-attachments/assets/91ca8522-e123-433c-9d1b-22929cee5b5f)
![WhatsApp Image 2025-08-23 at 17 52 55_705907a3](https://github.com/user-attachments/assets/4fd834e6-85d7-4c1e-a149-220ce4fb4c13)
![WhatsApp Image 2025-08-23 at 17 52 55_7ee19f2f](https://github.com/user-attachments/assets/3caebcba-e2b4-42e6-a691-df2a28c04cae)
![WhatsApp Image 2025-08-23 at 17 52 55_37985230](https://github.com/user-attachments/assets/72906660-412f-4839-aaf9-7d9434e2d192)
![WhatsApp Image 2025-08-23 at 17 52 55_39bf0b55](https://github.com/user-attachments/assets/39c6a62c-60a3-4bfe-94d6-0cffa7c27e10)
