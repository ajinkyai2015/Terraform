resource "aws_instance" "ec2" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "cicd-pipeline"  # Specify the key pair name here
  security_groups = [var.security_group_id]

  tags = {
    Name = "AppInstance-${count.index + 1}"
  }
}
