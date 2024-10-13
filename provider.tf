provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "cicd-statefile"      # Replace with your S3 bucket name
    key    = "terraform.tfstate"   # The path to store the state file in S3
    region = "us-east-1"           # AWS region
    encrypt = true                 # Encrypt the state file at rest using SSE
  }
}
