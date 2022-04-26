resource "aws_vpc" "main" {
  cidr_block = var.vpc.cidr_block

  tags = {
    Name     = var.vpc.Name
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}