resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  metadata_options {
    http_tokens = "required"
  }

  root_block_device {
    encrypted = true
  }
}
