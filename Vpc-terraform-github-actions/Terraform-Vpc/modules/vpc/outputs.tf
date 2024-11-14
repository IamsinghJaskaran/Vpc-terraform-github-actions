output "vpc_id" {
    value = aws_vpc.my_vpc.id 
}
output "subnet_ids" {
  value = aws_subnet.terra_sub.*.id
}
