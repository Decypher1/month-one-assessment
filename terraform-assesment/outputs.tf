output "vpc_id" {
  value = aws_vpc.techcorp_vpc.id
}

output "alb_dns" {
  value = aws_lb.alb.dns_name
}

output "bastion_ip" {
  value = aws_instance.bastion.public_ip
}

output "web1_private_ip" {
  value = aws_instance.web1.private_ip
}

output "web2_private_ip" {
  value = aws_instance.web2.private_ip
}

output "db_private_ip" {
  value = aws_instance.db.private_ip
}