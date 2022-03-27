resource "aws_subnet" "public" {
    count = var.public_subnet_count
    vpc_id     = var.vpc_id
    cidr_block = var.subnet.public.cidr_block
    tags = {
        Name = var.subnet.public.Name
    }
}

resource "aws_subnet" "private" {
    count = var.private_subnet_count
    vpc_id     = var.vpc_id
    cidr_block = var.subnet.private.cidr_block
    tags = {
        Name = var.subnet.private.Name
    }
}