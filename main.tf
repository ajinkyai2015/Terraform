
terraform {
  backend "s3" {
    bucket         = "cicd-statefile"       # Your S3 bucket name
    key            = "terraform/ec2-state.tfstate"  # Path to store the state file within the bucket
    region         = "us-east-1"            # Specify your region
    encrypt        = true                   # Enable encryption at rest
    dynamodb_table = "terraform-lock"       # DynamoDB table for state locking (optional)
  }
}

module "ec2_instances" {
  source           = "./modules/ec2"
  instance_count   = 3
  instance_type    = "t2.medium"
  ami_id           = "ami-005fc0f236362e99f"  # Replace with the correct Ubuntu 20.04 AMI ID for your region
  security_group_id = module.security_group.sg_id
}

module "security_group" {
  source = "./modules/security-group"
}
