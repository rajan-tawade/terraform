provider "google" {
  credentials = file("google.json")
  project = "devops-01-354720"
  region = "europe-west2"
  zone = "europe-west2-a"
}

resource "google_compute_instance" "vm_instance" {
  name = "terraform-instance"
  machine_type = "e2-micro"
  zone = "europe-west2-a"
  
  boot_disk {
    initialize_params {
		image = "debian-cloud/debian-11"
	}
  }

  network_interface {
    network = "default"
 }
  
 tags = ["web","dev"]

  metadata = {
     ssh-keys = ""
}

}
