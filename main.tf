resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
}

resource "aws_security_group" "ssh_test" {
  name = "ssh-test"

  ingress {
    description = "Allow SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }
}
