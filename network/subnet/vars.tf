variable "vpc_id" {}

variable "subnet" {
 type = map(any)
  default = {
    name_public  = ""
    cidr_block_public = ""
    name_private  = ""
    cidr_block_private = ""   
  }
}