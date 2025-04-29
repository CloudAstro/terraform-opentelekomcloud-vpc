output "vpc_v1" {
  value       = opentelekomcloud_vpc_v1.vpc_v1
  description = <<DESCRIPTION
Example output:
```
output "name" {
  value = module.module_name.vpc_v1.name
}
```
DESCRIPTION
}
