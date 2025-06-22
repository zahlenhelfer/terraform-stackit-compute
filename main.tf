# Docker Server für die Contianer
resource "stackit_key_pair" "keypair" {
  name       = "tf-managed-key-pair"
  public_key = chomp(file(var.ssh_key_path))
}

resource "stackit_server" "node" {
  project_id   = var.project_id
  name         = var.vm_name
  machine_type = var.machine_type
  keypair_name = stackit_key_pair.keypair.name
  user_data    = file("${path.module}/cloud-init/${var.cloud_init_file}.yaml")
  boot_volume = {
    size                  = var.vm_boot_volume_size
    source_type           = "image"
    source_id             = var.image_id
    delete_on_termination = true
  }

}
