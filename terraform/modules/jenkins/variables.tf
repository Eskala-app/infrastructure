variable "machine_type" {
  default     = "g1-small"
  description = "Machine type for the instance"
  type        = string
}

variable "subnet_name"{
  description = "Subnetwork name where the instance will be deployed"
  type = string
}
