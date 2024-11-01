
variable "project" {
  type = string
  default = "devops-01-354720"
}

variable "region" {
  type = string
  default = "europe-west2"
}

variable "zone" {
  type = string
  default = "europe-west2-a"
}

variable "name" {
  type = string
  default = "terraform-instance"
}

variable "machine_type" {
  type = string
  default = "e2-micro"
}

variable "image" {
  type = string
  default = "debian-cloud/debian-11"
}



provider "google" {
  credentials = file("google.json")
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name = var.name
  machine_type = var.machine_type
  zone = var.zone
  
  boot_disk {
    initialize_params {
		image = var.image
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
