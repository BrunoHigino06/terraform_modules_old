variable "vpc" {
 type = map(any)
  default = {
    name  = ""
    cidr_block = ""
  }
}