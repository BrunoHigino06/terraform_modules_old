resource "aws_route_table_association" "RT_associate" {
  count = length(var.subnet_name_association)
  subnet_id      = data.aws_subnet.subnet_name[count.index].id
  route_table_id = data.aws_route_table.route_table_name[count.index].id
}