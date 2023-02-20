output "name_of_ec2" {
  value = aws_instance.Dmitry_Yankov_lesson46.id
}
output "public_ip" {
  value = aws_instance.Dmitry_Yankov_lesson46.public_ip
}
output "private_ip" {
  value = aws_instance.Dmitry_Yankov_lesson46.private_ip
}
output "dns" {
  value = aws_instance.Dmitry_Yankov_lesson46.public_dns
}
output "subnet_id" {
  value = aws_instance.Dmitry_Yankov_lesson46.subnet_id
}
