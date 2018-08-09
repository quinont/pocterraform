provider "google" {
  project     = "new-project-212112"
  region      = "us-central1"
}


resource "google_compute_instance" "default" {
  name         = "test-tf"
  machine_type = "g1-small"
  zone         = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "COS"
    }
  }

  network_interface {
    network = "default"

  }
}
