
provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

module "vpc_module_test" {
  source = "./modules/vpc-test-module"
  network_name = var.vpc_name
  instance_config = {
    instance_name = var.instance_name
  }
}