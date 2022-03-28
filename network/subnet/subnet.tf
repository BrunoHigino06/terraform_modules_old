resource "aws_subnet" "public" {
    count = length(var.subnet.cidr_block_public)
    vpc_id     = var.vpc_id
    cidr_block = var.subnet.cidr_block_public
    tags = {
        Name = "${var.subnet.name_public}_${count.index}"
    }
}

resource "aws_subnet" "private" {
    count = length(var.subnet.cidr_block_private)
    vpc_id     = var.vpc_id
    cidr_block = var.subnet.cidr_block_private
    tags = {
        Name = "${var.subnet.name_private}_${count.index}"
    }
}