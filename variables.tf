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

variable "availability_zone_a" {
    type = string
    default = "eu-west-1a"
}

variable "availability_zone_b" {
    type = string
    default = "eu-west-1b"
}

variable "ori_subnet_1_id" {  
  description = "ori_subnet_1_id"  
  type        = string  
  default     = "subnet-085e227e5da300467"  
} 

variable "ori_subnet_2_id" {  
  description = "ori_subnet_2_id"  
  type        = string  
  default     = "subnet-089c508c288f7290e"  
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

variable "cluster_name" {
  type = string
  default = "ori-cluster"
}

variable "cluster_version" {
  type = string
  default = "1.29"
  
}

variable "lb_arn" {
  type = string
  default = "arn:aws:elasticloadbalancing:eu-west-1:730335218716:loadbalancer/net/a8a34a7b299e543cd9e43bb111938a93/96cec55f85f7d196"
}

