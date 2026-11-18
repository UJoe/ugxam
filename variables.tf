variable "vpc" {
  type = object({
    name                 = string
    cidr_block           = string
    tags                 = map(string)
    enable_dns_hostnames = bool
    enable_dns_support   = bool
    subnets = map(object({
      cidr = string
      az   = string
    }))
  })
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "aws_region" {
  type = string
}
