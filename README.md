Hugging face model deployment in AWS EC2

Architecture

Student Browser
      ↓
Simple Python App / Notebook
      ↓
AWS EC2 Instance
      ↓
Hugging Face Model API
      ↓
AI Model Response

AWS Services Used:
Service	                          Purpose
AWS EC2	                          Host the application
Security Group	                  Allow browser access

Part 1
Launch AWS EC2
Create Instance

Choose for:

Ubuntu 22.04
t3.micro
20 GB storage
Security Group

Allow:

SSH (22)
HTTP (80)
Custom TCP (8501 for Streamlit)

Part 2
Connect to EC
