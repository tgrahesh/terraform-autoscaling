provider "aws" {
  region = "eu-west-1"  # Update with your desired region
}

resource "aws_security_group" "AS_SecurityGroup" {
  name        = "Autoscaling-SecurityGroup"
  description = "Allow TLS,http,SSH inbound traffic"
      tags = {
      Name = var.SG_Name
    }
  # Inbound rule for SSH (port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound rule for HTTP (port 80)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Default inbound rule for all traffic within the security group
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # This means all protocols
    self        = true   # Traffic from instances associated with the same security group
  }

  # Outbound rule for all traffic (optional)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # This means all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
}
