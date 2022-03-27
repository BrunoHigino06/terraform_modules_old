variable "vpc_id" {}
variable "public_subnet_count" {
    default = 0
}

variable "private_subnet_count" {
    default = 0
}

variable "subnet" {
    type = map(any)
        public = {
            name  = ""
            cidr_block = ""
        }
        private = {
            name = ""
            cidr_block = ""
        }
}