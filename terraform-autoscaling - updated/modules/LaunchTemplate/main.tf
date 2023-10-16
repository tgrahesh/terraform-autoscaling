/*provider "aws" {
  region = "eu-west-1" # Specify your desired AWS region
}*/

resource "aws_launch_template" "example" {
  name_prefix = var.name_prefix

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 8
      volume_type = "gp2"
      delete_on_termination = true
      snapshot_id = var.snapshot_id # Specify your existing AMI ID
    }
  }

  instance_type = "t2.micro" # Specify your desired instance type
  key_name = var.key_name # Specify your key pair name
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "ExampleInstance"
    }
  }
}
