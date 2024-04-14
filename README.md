# terraform-august23
Terraform Infrastructure Provisioning**

**Objective:**  
Create a Terraform configuration to provision an EC2 instance with Apache deployed, along with necessary networking configurations, using best practices.

**Tasks:**
1. **EC2 Instance with Apache Deployment:**
   - Write Terraform code to provision an EC2 instance.
   - Use user data to deploy Apache on the instance.
   - Utilize string interpolation to name the instance as `<name-ec2>-<environment>`.

2. **Security Group Configuration:**
   - Create a security group resource to allow SSH access from your IP and open port 80 to the world.
   - Ensure proper ingress and egress rules are defined for security.

3. **Elastic IP Address Association:**
   - Provision an Elastic IP address.
   - Associate the Elastic IP address with the EC2 instance.

4. **Output Values:**
   - Define output values to display important information such as instance ID, public IP, and Elastic IP.

5. **State Management:**
   - Store the Terraform state file on an S3 bucket backend.
   - Ensure proper IAM permissions are set for accessing the S3 bucket.

6. **Parameterization:**
   - Parametrize all values in the Terraform code using variables.
   - Include variables for instance type, AMI ID, SSH key name, VPC ID, subnet ID, etc.

7. **GitHub Repository:**
   - Upload your Terraform code to a GitHub repository.
   - Share the GitHub repository link as part of your submission.

**Submission Guidelines:**
- Submit the Terraform code in a GitHub repository.
- Ensure proper documentation and comments are provided within the code.
- Include a README.md file explaining the purpose of the code and how to execute it.

**Note:**
- Make sure to adhere to best practices for security, naming conventions, and resource optimization.
- Test the Terraform code thoroughly before submission to ensure it functions as expected.
- Reach out to Teacher Assistant if you encounter any issues or need clarification on any aspect of the assignment.

Happy Terraforming!
