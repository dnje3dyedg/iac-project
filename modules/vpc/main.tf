resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# Subnet 1 (AZ-a)
resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
}

# Subnet 2 (AZ-b)
resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route" "route" {
  route_table_id         = aws_route_table.rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}

resource "aws_route_table_association" "assoc1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "assoc2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.rt.id
}

output "subnet_ids" {
  value = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]
}

output "vpc_id" {
  value = aws_vpc.main.id
}