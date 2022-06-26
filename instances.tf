# Configure the Google Cloud provider
provider "google" {
  project = "driven-strength-000000"
  region  = "us-east1-b"
}

# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "example"
  machine_type  = "f1-micro"
  zone          = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
© 2022 GitHub, Inc.
Terms
Privacy
