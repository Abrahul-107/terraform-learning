
output "ec2_public_ip"{
    description = "Public IP of the ec2 instance"
    value = aws_instance.small_ec2.public_ip

}
output "ec2_instance_id"{
   description  = "ec2 instance id"
   value = aws_instance.small_ec2.id
}