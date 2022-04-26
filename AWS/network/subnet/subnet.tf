resource "aws_subnet" "subnets" {
    count = length(var.subnets_cidr_block)
    vpc_id     = var.vpc_id
    cidr_block = var.subnets_cidr_block[count.index]
    tags = {
        Name = var.subnets_names[count.index]
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