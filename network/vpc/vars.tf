variable "vpc" {
  type = list(object({
    cidr_block = string
    Name       = string
  }))
  default = [
    {
      cidr_block = ""
      Name       = ""
    }
  ]
}