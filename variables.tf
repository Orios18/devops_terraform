variable "aws_subnet" {  
  description = "ori_aws_subnet"  
  type        = string  
  default     = "subnet-05c45c4000a6c7f77"  
} 

variable "cidr_block_2" {
    description = "ori_subnet_2_cidr_block"
    type = string
    default = "192.168.23.0/24"
}

variable "cidr_block_1" {
    description = "ori_subnet_1_cidr_block"
    type = string
    default = "192.168.22.0/24"
}

variable "vpc_id" {
    description = "DevOps_workshop"
    type = string
    default = "vpc-01b834daa2d67cdaa"
  
}

variable "availability_zone" {
    type = string
    default = "eu-west-1a"
  
}

variable "ori_subnet_1_id" {  
  description = "ori_subnet_1_id"  
  type        = string  
  default     = "subnet-0dbaedc9c797f8dd8"  
} 

variable "ori_subnet_2_id" {  
  description = "ori_subnet_2_id"  
  type        = string  
  default     = "subnet-009d096fde49a59b1"  
} 

variable "nat_gateway_id" {  
  description = "nat_gateway_id"  
  type        = string  
  default     = "nat-0440e3c0e49d26497"  
} 

variable "cidr_block" {
    type = string
    default = "0.0.0.0/0"
  
}
