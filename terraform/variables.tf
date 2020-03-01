variable "project" {
  default     = "development-269007"
  description = "Google Cloud Platform project to be used"
  type        = string
}

variable "region" {
  default     = "us-west2"
  description = "Primary region where all resources will be deployed"
  type        = string
}

variable "zone" {
  default     = "us-west2-a"
  description = "Primary zone for resources"
  type        = string
}

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

variable "subnetwork_name" {
  default     = "subnet-dev-1"
  description = "Name used for the subnet"
  type        = string
}

variable "cidr" {
  default     = "10.1.0.0/16"
  description = "CIDR allocation for the subnet"
  type        = string
}

variable "machine_type" {
  default     = "g1-small"
  description = "Machine type for the instance"
  type        = string
}

