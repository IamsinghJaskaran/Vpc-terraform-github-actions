#creating VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    "Name"="Terra_vpc"
  }
}

#creating 2 subnets

resource "aws_subnet" "terra_sub" {
    count = length(var.subnet_cidr)
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr[count.index]
    availability_zone = data.aws_availability_zones.available.names[count.index] #aws_availability_zones
    map_public_ip_on_launch = true 
    tags={
        Name=var.subnet_names[count.index]
    } 
}
#creating Internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "My internet Gateway"
  }
}
#creating Route table
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags={
    Name="terraroutetable"
  }
}

#route table association 

resource "aws_route_table_association" "a" {
  count =length(var.subnet_cidr)
  subnet_id      = aws_subnet.terra_sub[count.index].id
  route_table_id = aws_route_table.rt.id
}