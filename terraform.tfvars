vpc = {
  name                 = "UGVPC"
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  subnets = {
    "public-a"  = { cidr = "10.0.1.0/24", az = "eu-central-1a" }
    "public-b"  = { cidr = "10.0.2.0/24", az = "eu-central-1b" }
    "private-a" = { cidr = "10.0.3.0/24", az = "eu-central-1a" }
  }
  tags = {
    Name = "UGVPC"
  }
}

aws_profile = "default"
aws_region  = "eu-central-1"
