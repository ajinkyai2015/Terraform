resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = {
    Name = "EC2-instance-${count.index + 1}"
  }
}

output "instance_ids" {
  value = aws_instance.ec2_instance.*.id
}
