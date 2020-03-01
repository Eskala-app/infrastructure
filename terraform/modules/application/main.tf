resource "google_compute_instance" "eskala-server" {
  name         = "eskala"
  machine_type = var.machine_type
  description  = "Instance for the development of the application"

  labels = {
    environment = "development"
    server      = "application"
  }

  boot_disk {
    initialize_params {
      image = "development-269007/eskala"
      size  = "20"
      type  = "pd-standard"
    }
  }

  network_interface {
    subnetwork = var.subnetwork_name
    access_config {

    }

  }
}
