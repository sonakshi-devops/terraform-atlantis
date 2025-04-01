output "instance_id" {
  description = "ID of a EC2 instance"
  value       = aws_instance.example.id
}
