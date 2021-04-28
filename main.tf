resource "google_compute_instance" "evolve-3-workstream" {
  name      = "evolve-3-workstream"
  machine_type =      "n1-standard-1"
  hostname = "evolve-3-workstream.com"
  zone = "us-central1-a"
  allow_stopping_for_update = true
  #tags            =["MyTag_in_vpc"]

  labels = {
      name = "evolve-3-workstream"
      owner =  "abc"
      user  =   "abc"
      os    =   "centos7"
  }


  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

// Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }
 network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = "echo 'hi There' > /test.txt"

  
  }



