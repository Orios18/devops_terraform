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

variable "region" {
  type = string
  default = "eu-west-1"
}

variable "availability_zone_b" {
    type = string
    default = "eu-west-1b"
}

variable "ori_subnet_1_id" {  
  description = "ori_subnet_1_id"  
  type        = string  
  default     = "subnet-02e116f1ba95ac183"  
} 

variable "ori_subnet_2_id" {  
  description = "ori_subnet_2_id"  
  type        = string  
  default     = "subnet-08dc0a2b529fdb7e7"  
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

variable "lb_dns" {
  type = string
  default = "aa966a94564c843319f9aa3709a2267c-bd0a1494e9014f67.elb.eu-west-1.amazonaws.com"
}

variable "zone_id" {
  type = string
  default = "Z00269823B8KU0UBQVXPI"
}


