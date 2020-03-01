resource "google_compute_network" "vpc-network" {
  name                    = var.network_name
  description             = "Primary VPC used for Eskala app development"
  auto_create_subnetworks = var.auto_subnets
}

resource "google_compute_firewall" "default" {
  name          = "custom-rule"
  network       = google_compute_network.vpc-network.self_link
  description   = "Allow SSH and web access"
  source_ranges = ["177.226.158.158", "2.206.168.22"]
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443", "8080"]
  }
}
