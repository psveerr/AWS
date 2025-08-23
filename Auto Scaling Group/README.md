AWS Console guide to set up Auto Scaling using an Auto Scaling Group (ASG):
Step 1: Create an AMI
Launch an EC2 instance and configure it with the software/settings you want.
Once ready, go to EC2 Dashboard > Instances.
Select your instance, click Actions > Image > Create Image.
Provide a name and description, then create the AMI.
Wait for the AMI creation to complete (check under EC2 Dashboard > AMIs).
Step 2: Create a Launch Template
Go to EC2 Dashboard > Launch Templates.
Click Create launch template.
Give it a name and description.
Choose the AMI you created earlier.
Select the instance type.
Configure key pair, security groups, network settings, and user data if needed.
Review and create the launch template.
Step 3: Create an Auto Scaling Group
Go to EC2 Dashboard > Auto Scaling Groups.
Click Create Auto Scaling group.
Give the ASG a name.
Select the launch template you created.
Choose the VPC and subnets where instances will launch.
Set the minimum, desired, and maximum number of instances.
Configure advanced options if needed.

![WhatsApp Image 2025-08-23 at 17 59 58_64c8f7e1](https://github.com/user-attachments/assets/1f9282b0-4be7-415a-b750-d34bb23f1ab6)
![WhatsApp Image 2025-08-23 at 17 59 58_cd1c8feb](https://github.com/user-attachments/assets/2b8c02fb-401d-45b6-aec5-df1b9d756124)
![WhatsApp Image 2025-08-23 at 17 59 57_d6d1d649](https://github.com/user-attachments/assets/20b678fd-97a6-43d4-89c3-197a950a727d)
![WhatsApp Image 2025-08-23 at 17 59 57_6742084f](https://github.com/user-attachments/assets/5a3327f3-4860-4f5f-8661-a823ed8dc834)
![WhatsApp Image 2025-08-23 at 17 59 57_ea6f6b5d](https://github.com/user-attachments/assets/68d7e735-a5e5-4f96-80ed-59da0a6beea0)
![WhatsApp Image 2025-08-23 at 17 59 57_36343edb](https://github.com/user-attachments/assets/8081b318-39ca-41f3-be13-8dc816a225ae)
