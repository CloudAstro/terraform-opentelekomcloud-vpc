<!-- BEGINNING OF PRE-COMMIT-OPENTOFU DOCS HOOK -->
# OpenTelekomCloud VPC Terraform Module

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-blue.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![OpenTofu Registry](https://img.shields.io/badge/opentofu-registry-yellow.svg)](https://search.opentofu.org/module/CloudAstro/vpc/opentelekomcloud/)

This module is designed to manage Virtual Private Clouds (VPCs) within OpenTelekomCloud (OTC). It provides flexible configuration options for VPC creation, including CIDR settings, secondary CIDR blocks, tagging, and customizable timeouts for create and delete operations.

# Features

- **VPC Management**: Automates the creation and management of VPCs in OpenTelekomCloud.
- **Custom CIDR Configuration**: Supports primary and secondary CIDR block assignment.
- **Tagging Support**: Allows adding metadata tags to VPC resources.
- **Timeout Control**: Enables specifying custom create and delete operation timeouts through dynamic configuration.

# Example Usage

This example demonstrates how to provision a VPC with optional secondary CIDR blocks and custom timeout settings:

```hcl
module "vpc" {
  source         = "../.."
  name           = "vpc"
  description    = "description"
  cidr           = "10.10.0.0/24"
  secondary_cidr = "172.16.0.0/24"
  region         = "eu-de"

  tags = {
    foo = "bar"
    key = "value"
  }
}
```
<!-- markdownlint-disable MD033 -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9.0 |
| <a name="requirement_opentelekomcloud"></a> [opentelekomcloud](#requirement\_opentelekomcloud) | >= 1.36.35 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_opentelekomcloud"></a> [opentelekomcloud](#provider\_opentelekomcloud) | >= 1.36.35 |

## Resources

| Name | Type |
|------|------|
| [opentelekomcloud_vpc_v1.vpc_v1](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/vpc_v1) | resource |

<!-- markdownlint-disable MD013 -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | * `cidr` - (Required) The range of available subnets in the VPC. The value ranges from<br/>  `10.0.0.0/8` to `10.255.255.0/24`, `172.16.0.0/12` to `172.31.255.0/24`,<br/>  or `192.168.0.0/16` to `192.168.255.0/24`.<br/><br/>Example input:<pre>cidr = "10.0.0.0/24"</pre> | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | * `name` - (Required) The name of the VPC. The name must be unique for a tenant. The value is a string of<br/>  no more than `64` characters and can contain digits, letters, underscores (`_`), and hyphens (`-`).<br/><br/>Example input:<pre>name = "vpc"</pre> | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | * `description` - (Optional) A description of the VPC.<br/><br/>Example input:<pre>description = "description"</pre> | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | * `region` - (Optional) The region in which to create the VPC. If not specified, the provider's default region will be used.<br/><br/>Example input:<pre>region = "eu-de"</pre> | `string` | `null` | no |
| <a name="input_secondary_cidr"></a> [secondary\_cidr](#input\_secondary\_cidr) | * `secondary_cidr` - (Optional) Secondary CIDR block that can be added to VPCs.<br/>  The value cannot contain the following: `100.64.0.0/1`, `214.0.0.0/7`, `198.18.0.0/15`, `169.254.0.0/16`,<br/>  `0.0.0.0/8`, `127.0.0.0/8`, `240.0.0.0/4`, `172.31.0.0/16`, `192.168.0.0/16`.<br/>  Currently, only one secondary CIDR block can be added to each VPC.<br/><br/>Example input:<pre>secondary_cidr = "172.16.0.0/24"</pre> | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | * `tags` - (Optional) The key/value pairs to associate with the VPC.<br/><br/>Example input:<pre>tags = {<br/>  foo = "bar"<br/>  key = "value"<br/>}</pre> | `map(string)` | `null` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | * `timeouts` - (Optional) A timeouts block. This allows you to specify timeouts for create and delete operations.<br/>  * `create` - (Optional) The time to wait for the VPC to be created.<br/>  * `delete` - (Optional) The time to wait for the VPC to be deleted.<br/><br/>Example input:<pre>timeouts = {<br/>  create = "1m"<br/>  delete = "1m"<br/>}</pre> | <pre>object({<br/>    create = optional(string)<br/>    delete = optional(string)<br/>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_v1"></a> [vpc\_v1](#output\_vpc\_v1) | Example output:<pre>output "name" {<br/>  value = module.module_name.vpc_v1.name<br/>}</pre> |

## Modules

No modules.

## 🌐 Additional Information  

This module provides a flexible way to manage Virtual Private Clouds (VPCs) within OpenTelekomCloud, supporting key network features such as multiple CIDR blocks, resource tagging, and customizable operation timeouts. It is designed to be used for both standalone VPC deployments and as a foundation for larger network architectures.

## 📚 Resources

- [Terraform OpenTelekomCloud VPC Resource](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/vpc_v1)  
- [OpenTelekomCloud VPC Overview](https://docs.otc.t-systems.com/vpc/)  
- [Terraform OpenTelekomCloud Provider](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs)  

## ⚠️ Notes  

- Ensure CIDR blocks do not overlap with existing networks to prevent IP conflicts.  
- Secondary CIDR blocks are optional but must be planned carefully for future scalability.  
- Tagging can greatly simplify resource management and cost allocation across your cloud environment.  
- Be aware of region-specific VPC limitations and quotas in OpenTelekomCloud when designing your architecture.

## 🧾 License  

This module is released under the **Apache 2.0 License**. See the [LICENSE](./LICENSE) file for full details.
<!-- END OF PRE-COMMIT-OPENTOFU DOCS HOOK -->