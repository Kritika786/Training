resource "aws_security_group" "web" {
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = "0.0.0.0/0"
        description = "allow http"

    }
    egress  {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "value"
      from_port = 0
      protocol = "-1"
      to_port = 0
    } 
}