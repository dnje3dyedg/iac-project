 Infrastructure as Code (IaC) Project — Core Cloud Setup

 📌 About This Project

In this project, I used Terraform to build a complete cloud infrastructure on AWS from scratch. Instead of manually creating resources in the console, everything is defined in code and deployed automatically.

The goal was to understand how real-world cloud environments are built using Infrastructure as Code, along with applying basic security policies.



 🎯 What I Built

This project sets up the core components required for a cloud-based application:

* A custom VPC (network)
* Subnets and routing
* An EC2 instance (virtual server)
* An RDS database (managed database)
* Remote state storage using S3
* Basic policy checks using OPA

---

🏗️ How the Architecture Works

First, a network (VPC) is created. Inside that network, subnets and routing rules are defined so resources can communicate.

Then:

* An EC2 instance is launched inside the network to act as a server
* An RDS instance is created for storing application data
* Terraform state is stored remotely in S3 so the infrastructure can be tracked safely

---

 📁 Project Structure

```id="c6r8kf"
iac-project/
│
├── main.tf
├── provider.tf
├── backend.tf
├── .gitignore
├── README.md
│
├── modules/
│   ├── vpc/
│   ├── ec2/
│   └── rds/
│
└── policy.rego
```

I used a modular structure to keep things clean and reusable. Each module handles a specific part of the infrastructure.

---

⚙️ Tools & Technologies

* Terraform (for IaC)
* AWS (for cloud resources)
* Open Policy Agent (for policy checks)
* Git & GitHub (for version control)

---

 🔐 Remote State (Why S3?)

Instead of storing Terraform state locally, I configured it to use an S3 bucket.

This helps:

* Avoid losing state files
* Support team collaboration
* Keep infrastructure tracking consistent

---

 🛡️ Policy-as-Code (OPA)

I added a basic policy using Open Policy Agent to prevent insecure configurations.

For example, the policy can block creating public EC2 instances.

This introduces the concept of DevSecOps — adding security checks during deployment.

---

 🚀 How to Run This Project

 1. Clone the repository


git clone https://github.com/dnje3dyedg/iac-project.git
cd iac-project


---

2. Configure AWS creden
aws configure



 3. Initialize Terraform

terraform init


---

 4. Check the plan


terraform plan


 5. Deploy infrastructure

terraform apply

 6.  Destroy resources


terraform destroy


---

 📦 What This Project Includes

* Complete Terraform configuration
* Modular infrastructure design
* Remote state setup (S3)
* Basic policy-as-code implementation
* Step-by-step deployment guide

---

 🧠 What I Learned

While working on this project, I understood:

* How Terraform builds infrastructure step by step
* How to structure real-world IaC projects
* Importance of remote state management
* Basics of securing infrastructure using policies


---

 ⚠️ Important Notes

* `.terraform/` and `.tfstate` files are excluded using `.gitignore`
* These files should never be pushed to GitHub
* The project is designed for learning but follows real-world practices

---

 🚀 Future Improvements

If I extend this project, I would like to add:

* Load balancer and auto scaling
* CI/CD pipeline (GitHub Actions)
* Monitoring with CloudWatch
* Better security policies

---

 📌 Final Thoughts

This project gave me a solid understanding of how cloud infrastructure can be automated and managed using code. It reflects how modern DevOps teams work in real environments.


 
