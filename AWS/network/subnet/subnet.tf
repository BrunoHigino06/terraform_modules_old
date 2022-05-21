resource "aws_subnet" "subnets" {
    count = length(var.subnets_cidr_block)
    vpc_id     = var.vpc_id
    cidr_block = var.subnets_cidr_block[count.index]
    availability_zone = var.subnet_az[count.index]
    tags = {
        Name = var.subnets_names[count.index]
    }
}