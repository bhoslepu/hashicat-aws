module "vpc" {
  source  = "app.terraform.io/bhosaleprashant/vpc/aws"
  version = "2.55.0"
  # insert required variables here
  cidr_block           = var.address_space
  enable_dns_hostnames = true

  tags = {
    name = "${var.prefix}-vpc"
    Department = "devops"
  }
}