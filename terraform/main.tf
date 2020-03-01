provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
  version = "~> 3.10"
}

module "vpc" {
  source       = "./modules/vpc"
  network_name = var.network_name
}

module "subnet" {
  source       = "./modules/subnet"
  cidr         = var.cidr
  network_name = module.vpc.network_name
}

module "jenkins" {
  source          = "./modules/jenkins"
  machine_type    = var.machine_type
  subnetwork_name = module.subnet.subnetwork_name
}

module "application" {
  source          = "./modules/application"
  machine_type    = var.machine_type
  subnetwork_name = module.subnet.subnetwork_name
}


