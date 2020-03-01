variable "network_name" {
  default     = "development"
  description = "Name of the VPC resource to be created"
  type        = string
}

variable "auto_subnets" {
  default     = false
  description = "Create subnetworks by default"
  type        = bool
}


