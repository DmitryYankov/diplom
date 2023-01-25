output "name_of_ec2" {
  value = aws_instance.diplom.id
}
output "public_ip" {
  value = aws_instance.diplom.public_ip
}
output "private_ip" {
  value = aws_instance.diplom.private_ip
}
output "dns" {
  value = aws_instance.diplom.public_dns
}
output "subnet_id" {
  value = aws_instance.diplom.subnet_id
}
