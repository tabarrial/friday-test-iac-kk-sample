output "ec2-test_public_ip" {
  description = "Public IP instance"
  value       = module.ec2-test.public_ip
}
