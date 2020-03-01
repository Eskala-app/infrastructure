resource "google_compute_subnetwork" "primary-subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr
  network       = var.network_name
}

