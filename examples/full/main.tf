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
