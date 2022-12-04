resource "aws_instance" "web" {
  ami = var.ami
  instance_type = "t2.micro"
  count = var.congi
  user_data = <<-EOF
   #!/bin/bash
   sudo yum update -y
   sudo yum install httpd -y
   sudo system enable httpd
   sudo system start httpd
   echo "Welcome to website buid by terraform"
  EOF
  security_groups = [ aws_security_group.websg.id ]

}