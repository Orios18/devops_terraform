resource "aws_subnet" "ori_1" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block_1
  availability_zone = var.availability_zone

  tags = {
    Name = "ori_subnet_1"
  }
}

resource "aws_subnet" "ori_2" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block_2
  availability_zone = var.availability_zone
  tags = {
    Name = "ori_subnet_2"
  }
}

resource "aws_route_table" "ori_rtb" {
  vpc_id = var.vpc_id
  
  route{
    cidr_block = var.cidr_block
    nat_gateway_id = var.nat_gateway_id
  }
  
  tags = {
    Name = "ori_rtb"
  }
}

resource "aws_route_table_association" "ori_1" {
  subnet_id      = var.ori_subnet_1_id
  route_table_id = aws_route_table.ori_rtb.id
}

resource "aws_route_table_association" "ori_2" {
  subnet_id     = var.ori_subnet_2_id
  route_table_id = aws_route_table.ori_rtb.id
}

