terraform {
  required_version = "~> 1.9.0"
  required_providers {
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = ">= 1.36.35"
    }
  }
}
