variable "instance_type" {
  description = "The instance type for EC2 instances"
  type        = string
  default     = "t2.medium"
}

variable "ami_id" {
  description = "The AMI ID for Ubuntu 20.04"
  type        = string
  default     = "ami-005fc0f236362e99f"
}

variable "key_name" {
  description = "The key pair name"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the instances will be launched"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instances"
  type        = string
}
