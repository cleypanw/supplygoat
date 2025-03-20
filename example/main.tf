resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group for SSH access"

  ingress {
    from_port   = local.ssh_port
    to_port     = local.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    yor_trace = "612b5481-b1c4-4ead-837f-0f3130feedb3"
  }
}

