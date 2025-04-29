variable "cidr" {
  type        = string
  nullable    = false
  description = <<DESCRIPTION
* `cidr` - (Required) The range of available subnets in the VPC. The value ranges from
  `10.0.0.0/8` to `10.255.255.0/24`, `172.16.0.0/12` to `172.31.255.0/24`,
  or `192.168.0.0/16` to `192.168.255.0/24`.

Example input:
```
cidr = "10.0.0.0/24"
```
DESCRIPTION
}

variable "description" {
  type        = string
  default     = null
  description = <<DESCRIPTION
* `description` - (Optional) A description of the VPC.

Example input:
```
description = "description"
```
DESCRIPTION
}

variable "name" {
  type        = string
  nullable    = false
  description = <<DESCRIPTION
* `name` - (Required) The name of the VPC. The name must be unique for a tenant. The value is a string of
  no more than `64` characters and can contain digits, letters, underscores (`_`), and hyphens (`-`).

Example input:
```
name = "vpc"
```
DESCRIPTION
}

variable "secondary_cidr" {
  type        = string
  default     = null
  description = <<DESCRIPTION
* `secondary_cidr` - (Optional) Secondary CIDR block that can be added to VPCs.
  The value cannot contain the following: `100.64.0.0/1`, `214.0.0.0/7`, `198.18.0.0/15`, `169.254.0.0/16`,
  `0.0.0.0/8`, `127.0.0.0/8`, `240.0.0.0/4`, `172.31.0.0/16`, `192.168.0.0/16`.
  Currently, only one secondary CIDR block can be added to each VPC.

Example input:
```
secondary_cidr = "172.16.0.0/24"
```
DESCRIPTION
}

variable "region" {
  type        = string
  default     = null
  description = <<DESCRIPTION
* `region` - (Optional) The region in which to create the VPC. If not specified, the provider's default region will be used.

Example input:
```
region = "eu-de"
```
DESCRIPTION
}

variable "tags" {
  type        = map(string)
  default     = null
  description = <<DESCRIPTION
* `tags` - (Optional) The key/value pairs to associate with the VPC.

Example input:
```
tags = {
  foo = "bar"
  key = "value"
}
```
DESCRIPTION
}

variable "timeouts" {
  type = object({
    create = optional(string)
    delete = optional(string)
  })
  default     = null
  description = <<DESCRIPTION
* `timeouts` - (Optional) A timeouts block. This allows you to specify timeouts for create and delete operations.
  * `create` - (Optional) The time to wait for the VPC to be created.
  * `delete` - (Optional) The time to wait for the VPC to be deleted.

Example input:
```
timeouts = {
  create = "1m"
  delete = "1m"
}
```
DESCRIPTION
}
