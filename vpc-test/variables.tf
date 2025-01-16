variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "common_tags" {
  type = map
  default = {
    Project = "Roboshop"
    Environment = "Dev"
    Terraform = "true"
  }
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "project_name" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "public_subnets_cidr" {
  type = list
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets_tags" {
  default = {}
}