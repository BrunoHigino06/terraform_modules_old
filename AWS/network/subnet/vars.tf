variable "vpc_id" {}

variable "subnets_names" {
  description = "Name of the subnets"
  type = list(string)
  default = [""]
}

variable "subnets_cidr_block" {
    type = list(string)
    description = "List of cidr blocks of public subnets"
    default = [""]
}