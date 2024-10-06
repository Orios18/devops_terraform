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