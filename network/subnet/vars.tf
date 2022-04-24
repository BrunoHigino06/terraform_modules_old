variable "vpc_id" {}

variable "name_subnets" {
  description = "Name of the subnets"
  type = list(string)
  default = [""]
}

variable "cidr_block_subnets" {
    type = list(string)
    description = "List of cidr blocks of public subnets"
    default = [""]
}