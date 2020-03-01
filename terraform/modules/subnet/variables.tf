variable "network_name" {
  description = "The name of the network where subnets will be created"
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

