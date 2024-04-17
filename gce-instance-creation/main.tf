provider "google" {
  project = "project-id" # write your own Project ID
  region  = "us-central-1"
}

resource "google_compute_instance" "terraform-gcp" {
  name         = "my-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2204-lts"
    }
  }

  network_interface {
    network = "default"
  }
}
