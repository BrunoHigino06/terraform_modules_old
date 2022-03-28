variable "vpc_id" {}

variable "name_subnets" {
  description = "Name of the subnets"
  type = list(string)
  default = ["subnet1", "subnet2"]
}

variable "cidr_block_subnets" {
    type = list(string)
    description = "List of cidr blocks of public subnets"
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}