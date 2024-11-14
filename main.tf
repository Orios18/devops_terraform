resource "aws_subnet" "ori_1" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block_1
  availability_zone = var.availability_zone_a

  tags = {
    Name = "ori_subnet_1"
  }
}

resource "aws_subnet" "ori_2" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block_2
  availability_zone = var.availability_zone_b
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

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_endpoint_public_access  = true

  cluster_addons = {
    coredns                = {}
    eks-pod-identity-agent = {addon_version = "v1.3.2-eksbuild.2"}
    kube-proxy             = {addon_version = "v1.29.0-eksbuild.1"}
    vpc-cni                = {addon_version = "v1.16.0-eksbuild.1"}
    aws-ebs-csi-driver     = {addon_version = "v1.35.0-eksbuild.1"}
  }

  vpc_id                   = var.vpc_id
  subnet_ids               = [var.ori_subnet_1_id, var.ori_subnet_2_id]
  control_plane_subnet_ids = [var.ori_subnet_1_id, var.ori_subnet_2_id]

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    instance_types = "t2.small"
  }

  eks_managed_node_groups = {
    ori-nodegroup = {
      # Starting on 1.30, AL2023 is the default AMI type for EKS managed node groups
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t2.small"]

      min_size     = 2
      max_size     = 10
      desired_size = 2
    }
  }

  # Cluster access entry
  # To add the current caller identity as an administrator
  enable_cluster_creator_admin_permissions = true

  

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}


resource "aws_route53_record" "ori" {
  zone_id = "Z00269823B8KU0UBQVXPI"  
  name    = "ori"  
  type    = "A"    

  alias {
    name                   = "a8a34a7b299e543cd9e43bb111938a93-96cec55f85f7d196.elb.eu-west-1.amazonaws.com"  
    zone_id                = "Z2IFOLAFXWLO4F"  
    evaluate_target_health = true 
  }
}

