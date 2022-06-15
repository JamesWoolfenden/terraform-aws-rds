resource "aws_security_group" "dbaccess" {
  name        = "${var.instance["name"]}-allow-db-access"
  description = "Allow inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "Just DB port from VPC"
    from_port   = var.instance["port"]
    to_port     = var.instance["port"]
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr
  }

  egress {
    description      = "All outbound"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
