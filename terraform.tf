terraform {
  required_version = ">= 1.12"
  required_providers {
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = ">= 1.36.68"
    }
  }
}
