variable "instance_count" {
  type        = number
  description = "Number of EC2 instances to create"
}

variable "instance_type" {
  type        = string
  description = "Instance type for EC2"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the Ubuntu 20.04"
}
