# month-one-assessment
Terraform project
# TechCorp Terraform Assessment

# TechCorp Terraform Assessment

## Project Overview
This project demonstrates the deployment of a web and database infrastructure using **Terraform** on AWS. The setup includes:

- VPC with public and private subnets
- Bastion host for secure SSH access
- Two private web servers running Apache
- One private PostgreSQL database server
- Application Load Balancer (ALB) distributing traffic to web servers
- Security groups enforcing proper network access
- Terraform used for full infrastructure provisioning

---

## **Terraform Setup**

1. **Initialize Terraform**
```bash
terraform init
````

2. **Plan the deployment**

```bash
terraform plan
```

3. **Apply the plan**

```bash
terraform apply
```

### **Terraform Outputs**

After deployment, Terraform provides these outputs:

| Resource        | Output                                               |
| --------------- | ---------------------------------------------------- |
| ALB DNS         | `techcorp-alb-421827398.us-east-1.elb.amazonaws.com` |
| Bastion Host IP | `98.92.139.26`                                       |
| DB Private IP   | `10.0.3.47`                                          |
| Web1 Private IP | `10.0.3.112`                                         |
| Web2 Private IP | `10.0.4.4`                                           |
| VPC ID          | `vpc-0550df71d4565c527`                              |

---

## **Accessing Resources**

### 1. **SSH Access**

**Bastion Host**

```bash
ssh -i techcorp-key.pem ec2-user@<Bastion-IP>
```

**Web Servers (via Bastion)**

```bash
ssh -i techcorp-key.pem ec2-user@<Web-Private-IP>
```

**Database Server (via Bastion)**

```bash
ssh -i techcorp-key.pem ec2-user@<DB-Private-IP>
```

---

### 2. **Web Access**

Visit the Application Load Balancer DNS in your browser:

```
http://techcorp-alb-421827398.us-east-1.elb.amazonaws.com
```

You should see:

* `Welcome from Web1`
* `Welcome from Web2`
  (Depending on the ALB routing)

---

### 3. **Database Access**

From a web server with PostgreSQL client installed:

```bash
psql -h <DB-Private-IP> -U webuser -d webdb -W
```

* **Username:** `webuser`
* **Password:** `Pass1234`
* **Database:** `webdb`

---

### 4. **Screenshots & Evidence**

Ensure screenshots include:

* Terraform plan output
* Terraform apply completion
* AWS console showing created resources
* ALB serving pages from both web servers
* SSH sessions to Bastion, Web, and DB servers
* Successful PostgreSQL connection
* Web access through ALB URL

---

