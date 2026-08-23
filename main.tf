terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

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
