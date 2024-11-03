
variable "project" {
  type    = string
  default = "devops-01-354720"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

variable "zone" {
  type    = string
  default = "europe-west2-a"
}

variable "name" {
  type    = string
  default = "terraform-instance"
}

variable "machine_type" {
  type    = string
  default = "e2-micro"
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-11"
}

