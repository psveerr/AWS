Exploring EC2, EBS Snapshots & AMIs on AWS
Recently, I worked on understanding how data and configurations can be preserved and reused across different EC2 instances using snapshots and AMIs.
I started with an Ubuntu EC2 instance, added some data, and then created a snapshot of its EBS volume. This snapshot allowed me to create a new volume and verify data consistency when attached to another instance. I also created an AMI to capture the entire system state — including configurations and installed software — and launched a new EC2 instance from it.
To further test portability, I used a RHEL EC2 instance, attached the volume created from the snapshot, and successfully accessed the same data.
This exercise helped me understand how AWS handles storage-level and image-level persistence — and the difference between simply copying data (via snapshots) and replicating full environments (via AMIs).
![WhatsApp Image 2025-08-23 at 17 41 00_c5ae629d](https://github.com/user-attachments/assets/d817c387-69d7-4d03-8b31-5c190bfef02a)
![WhatsApp Image 2025-08-23 at 17 41 06_0c350aef](https://github.com/user-attachments/assets/6ee1b42f-8769-4d0b-968d-22965c0ffe0c)
![WhatsApp Image 2025-08-23 at 17 41 07_f08a8d84](https://github.com/user-attachments/assets/f40a6517-f82f-4258-90ef-7845c7605827)
![WhatsApp Image 2025-08-23 at 17 41 07_79ba5fcc](https://github.com/user-attachments/assets/30c888fd-e3e7-4e5c-abd5-229450041d59)
![WhatsApp Image 2025-08-23 at 17 41 08_083697bc](https://github.com/user-attachments/assets/d320d38f-9f17-435c-9f18-59bb9bbb1f94)
![WhatsApp Image 2025-08-23 at 17 41 08_bb62a212](https://github.com/user-attachments/assets/711722ff-5aa3-4d55-92ad-2e986c0b0925)
![WhatsApp Image 2025-08-23 at 17 41 09_f007cc99](https://github.com/user-attachments/assets/ea2dc939-0f7c-40c1-ac8f-254cc4091355)
![WhatsApp Image 2025-08-23 at 17 41 09_0d09f9a3](https://github.com/user-attachments/assets/1a2e1f4b-0c25-44af-8463-c931fe6f34e5)
![WhatsApp Image 2025-08-23 at 17 41 09_f60524f8](https://github.com/user-attachments/assets/4e620c7c-e774-41ee-81f3-295f4f949fd2)

