module "vpc" {
  source = "../.."
  name   = "vpc"
  cidr   = "10.10.0.0/24"
}
