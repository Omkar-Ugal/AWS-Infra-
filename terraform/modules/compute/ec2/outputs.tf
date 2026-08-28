
output "instance_ids" {
  description = "IDs of the ec2 instances"
  value       = aws_instance.ec2[*].id
}

output "public_ips" {
  description = "public ips of the ec2 instance"
  value       = aws_instance.ec2[*].public_ip
}

output "security_group_id" {
  description = "id of the security group"
  value       = aws_security_group.ec2.id
}
