resource "google_compute_instance" "vm_instance" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }

  tags = ["web", "dev"]

  metadata = {
    ssh-keys = ""
  }
  provisioner "local-exec" {
    command = "echo ${google_compute_instance.vm_instance.network_interface.0.network_ip} >> ip.txt"
  }

}

output "ip" {
  value = google_compute_instance.vm_instance.network_interface.0.network_ip
}
