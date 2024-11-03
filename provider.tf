provider "google" {
  credentials = file("google.json")
  project = "${var.project}"
  region = "${var.region}"
  zone = "${var.zone}"
  
}