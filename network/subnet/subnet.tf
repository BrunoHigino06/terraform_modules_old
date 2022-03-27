resource "aws_subnet" "public" {
    count = length(var.subnet.public.cidr_block)
    vpc_id     = var.vpc_id
    cidr_block = var.subnet.public.cidr_block
    tags = {
        Name = "${var.subnet.public.Name}_${count.index}"
    }
}

resource "aws_subnet" "private" {
    count = length(var.subnet.private.cidr_block)
    vpc_id     = var.vpc_id
    cidr_block = var.subnet.private.cidr_block
    tags = {
        Name = "${var.subnet.private.Name}_${count.index}"
    }
}