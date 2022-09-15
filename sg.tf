data "aws_vpc" "selected" {
  default = true
}

resource "aws_security_group" "foobar" {
  name        = "foobar"
  description = "Allow TLS inbound traffic"
  vpc_id      = data.aws_vpc.selected.arn

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [
      "10.0.0.0/8"
    ]
  }

  tags = {
    Name = "foobar"
  }
}