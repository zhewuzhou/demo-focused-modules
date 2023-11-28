terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "demo_focused_module_terraform_state_table_bucket_name"
    key            = "demo/dev/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "demo_focused_module_terraform_state_dev_table"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

module "demo_focused_module_app_dev" {
  source = "../../../modules/app"

  server_text = var.server_text

  environment = var.environment


  instance_type      = "t2.micro"
  min_size           = 2
  max_size           = 2
  enable_autoscaling = false
  ami                = data.aws_ami.ubuntu.id
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}
