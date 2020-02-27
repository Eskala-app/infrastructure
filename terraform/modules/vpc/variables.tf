variable "vpc_name" {
  default     = "development"
  description = "Name of the VPC resource to be created"
  type        = string
}

variable "auto_subnets" {
  default     = false
  description = "Create subnetworks by default"
  type        = bool
}

variable "subnet_name" {
  default     = "subnet-dev-1"
  description = "Name used for the subnet"
  type        = string
}

variable "cidr" {
  default     = "10.1.0.0/16"
  description = "CIDR allocation for the subnet"
  type        = string
}

