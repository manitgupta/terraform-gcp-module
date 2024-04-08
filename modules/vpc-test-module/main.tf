resource "google_compute_network" "vpc_network" {
  name = var.network_name
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_config.instance_name
  machine_type = var.instance_config.machine_type
  zone         = var.instance_config.zone
  tags         = var.instance_config.tags

  boot_disk {
    initialize_params {
      image = var.instance_config.image_name
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}