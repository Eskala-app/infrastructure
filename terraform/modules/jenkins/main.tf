resource "google_compute_instance" "jenkins-server" {
  name         = "jenkins"
  machine_type = var.machine_type
  description  = "Instance for CI/CD using Jenkins"

  labels = {
    environment = "development"
    server      = "jenkins"
  }

  boot_disk {
    initialize_params {
      image = "custom-eskala/jenkins"
      size  = "20"
      type  = "pd-standard"
    }
  }

  network_interface {
    subnetwork = var.subnet_name
  }
}
