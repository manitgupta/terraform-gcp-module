output "ip" {
  description = "IP address of the VM instance"
  value = google_compute_instance.vm_instance.network_interface.0.network_ip
}