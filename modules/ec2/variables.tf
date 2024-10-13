variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 3
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the instances"
  type        = string
}

variable "key_name" {
  description = "Key pair name to use"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the instance will be launched"
  type        = string
}
