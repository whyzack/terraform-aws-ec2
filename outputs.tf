output "ID" {
  value       = aws_instance.ec2.id
  description = "Instance ID"
}

output "private_ip" {
  value       = aws_instance.ec2.private_ip
  description = "Private IP"
}

output "key_name" {
  value       = aws_key_pair.key.key_name
  description = "Key Name"
}

output "instance_type" {
  value = aws_instance.ec2.instance_type
}

output "instance_tags" {
  value = aws_instance.ec2.tags
}