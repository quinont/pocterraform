provider "google" {
  #project     = "new-project-212112"
  project     = "infra-pipeline"
  region      = "us-central1"
  credentials = "${file("~/.config/gcloud/infra-pipeline-92924377a738.json")}"
}

resource "google_compute_instance" "default" {
  name         = "test-tfa"
  machine_type = "g1-small"
  zone         = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "centos-7"
    }
  }

  network_interface {
    network = "default"

  }
}

