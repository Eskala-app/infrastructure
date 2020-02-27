provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
  version = "~> 3.10"
}

module "vpc" {
  source = "./modules/vpc"
}

module "jenkins" {
  source = "./modules/jenkins"
  subnet_name = module.vpc.subnet_name
}
