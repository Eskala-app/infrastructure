variable "machine_type" {
  default     = "g1-small"
  description = "Machine type for the instance"
  type        = string
}

variable "subnetwork_name" {
  default     = "subnet-dev-1"
  description = "Name used for the subnet"
  type        = string
}
