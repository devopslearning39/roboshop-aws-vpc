variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "common_tags" {
  type = map
  default = {}
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "project_name" {
  type = string
  default = ""
}

variable "environment" {
  type = string
  default = ""
}

variable "igw_tags" {
  type = map
  default = {}
}


variable "public_subnets_cidr" {
  type = list
  validation {
    condition = length(var.public_subnets_cidr) == 2
    error_message = "Please enter 2 cidr values"
  }
}

variable "public_subnets_tags" {
  type = map
  default = {}
}