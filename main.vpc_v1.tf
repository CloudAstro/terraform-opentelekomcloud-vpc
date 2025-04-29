resource "opentelekomcloud_vpc_v1" "vpc_v1" {
  name           = var.name
  description    = var.description
  cidr           = var.cidr
  secondary_cidr = var.secondary_cidr
  region         = var.region
  tags           = var.tags

  dynamic "timeouts" {
    for_each = var.timeouts != null ? var.timeouts : {}
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}
