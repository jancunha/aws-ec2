output "public_ip" {
    value       = aws_instance.ovni.public_ip
    description = "This is public_ip"
    sensitive = true
}

output "public_dns" {
    value       = aws_instance.ovni.public_dns
    description = "This is public_dns"
}