output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.subnet[*].id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.my_igw.id
}

output "route_table_id" {
  value = aws_route_table.my_route_table.id
}