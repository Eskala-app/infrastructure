output "subnetwork_name" {
  value = google_compute_instance.jenkins-server.network_interface[0].subnetwork
}
