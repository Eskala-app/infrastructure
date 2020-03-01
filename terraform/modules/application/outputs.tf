output "subnetwork_name" {
  value = google_compute_instance.eskala-server.network_interface[0].subnetwork
}
