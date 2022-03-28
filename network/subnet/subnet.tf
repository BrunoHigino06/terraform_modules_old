resource "aws_subnet" "subnets" {
    count = length(var.cidr_block_subnets)
    vpc_id     = var.vpc_id
    cidr_block = var.subnet.cidr_block_subnets[count.index]
    tags = {
        Name = var.name_subnets[count.index]
    }
}

output "subnet_ids" {
    description = "subnets id"
    value = aws_subnet.subnets[*].id

    depends_on = [
      aws_subnet.subnets
    ]
}

output "subnet_cidrblocks" {
    description = "cidr blocks of the subnets"
    value = aws_subnet.subnets[*].cidr_block

    depends_on = [
      aws_subnet.subnets
    ]
}