variable "region" {
  description = "AWS region to deploy the EKS cluster"
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "private_subnets_cidr" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  default     = 3
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  default     = 1
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  default     = 5
}

variable "instance_types" {
  description = "Instance types for worker nodes"
  type        = list(string)
  default     = ["t2.small"]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth config map"
  type        = list(object({ rolearn = string, username = string, groups = list(string) }))
  default     = []
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth config map"
  type        = list(object({ userarn = string, username = string, groups = list(string) }))
  default     = []
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth config map"
  type        = list(string)
  default     = []
}
