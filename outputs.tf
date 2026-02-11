output "server_1_public_ip" {
  value = aws_instance.monitoring_ec2[0].public_ip
}

output "server_2_public_ip" {
  value = aws_instance.monitoring_ec2[1].public_ip
}

output "prometheus_public_ip" {
  value = aws_instance.monitoring_ec2[2].public_ip
}

output "grafana_public_ip" {
  value = aws_instance.monitoring_ec2[3].public_ip
}

output "rds_endpoints" {
  value = aws_db_instance.mysql.endpoint
}

