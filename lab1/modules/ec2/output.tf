output "ec2" {
  value = {
    id  = aws_instance.ec2_instance.id
    arn = aws_instance.ec2_instance.arn
  }
}

