variable "vpc_id" {}

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