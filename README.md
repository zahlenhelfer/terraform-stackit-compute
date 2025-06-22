<!-- BEGIN_TF_DOCS -->
# terraform-stackit-compute

Terraform Module to deploy predefined compute-engines (VMs) on STACKIT

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_stackit"></a> [stackit](#requirement\_stackit) | 0.55.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_stackit"></a> [stackit](#provider\_stackit) | 0.55.0 |

## Resources

| Name | Type |
|------|------|
| [stackit_key_pair.keypair](https://registry.terraform.io/providers/stackitcloud/stackit/0.55.0/docs/resources/key_pair) | resource |
| [stackit_server.node](https://registry.terraform.io/providers/stackitcloud/stackit/0.55.0/docs/resources/server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_init_file"></a> [cloud\_init\_file](#input\_cloud\_init\_file) | The path to the cloud-init file for the VM. | `string` | `"ansible-ready.yaml"` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | The ID of the image to use for the VM. | `string` | `"d1151962-f2cd-45e6-9c67-185c5055c7e0"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | The machine type for the VM. | `string` | `"t1.1"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the Stackit project where the RabbitMQ instance will be created. | `string` | n/a | yes |
| <a name="input_ssh_key_path"></a> [ssh\_key\_path](#input\_ssh\_key\_path) | The path to the SSH public key file for the VM. | `string` | n/a | yes |
| <a name="input_vm_boot_volume_size"></a> [vm\_boot\_volume\_size](#input\_vm\_boot\_volume\_size) | The size of the VM boot volume in GB. | `number` | `10` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | The name of the VM. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_affinity_group"></a> [vm\_affinity\_group](#output\_vm\_affinity\_group) | The Affinity-Group of the VM. |
| <a name="output_vm_ip"></a> [vm\_ip](#output\_vm\_ip) | The AZ of the VM. |
| <a name="output_vm_server_id"></a> [vm\_server\_id](#output\_vm\_server\_id) | The ID of the VM. |
<!-- END_TF_DOCS -->