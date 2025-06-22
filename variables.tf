variable "project_id" {
  description = "The ID of the Stackit project where the RabbitMQ instance will be created."
  type        = string
}

variable "ssh_key_path" {
  description = "The path to the SSH public key file for the VM."
  type        = string
}

variable "vm_name" {
  description = "The name of the VM."
  type        = string
}

variable "vm_boot_volume_size" {
  description = "The size of the VM boot volume in GB."
  type        = number
  default     = 10
}

variable "image_id" {
  description = "The ID of the image to use for the VM."
  type        = string
  default     = "d1151962-f2cd-45e6-9c67-185c5055c7e0" # Debian 12
}

variable "machine_type" {
  description = "The machine type for the VM."
  type        = string
  default     = "t1.1"
}

variable "cloud_init_file" {
  description = "The path to the cloud-init file for the VM."
  type        = string
  default     = "ansible-ready.yaml"
}
