output "vm_affinity_group" {
  description = "The Affinity-Group of the VM."
  value       = stackit_server.node.affinity_group
}

output "vm_ip" {
  description = "The AZ of the VM."
  value       = stackit_server.node.availability_zone
}

output "vm_server_id" {
  description = "The ID of the VM."
  value       = stackit_server.node.server_id
}
