output "ip" {
  description = "IP address of the VM instance"
  value = module.vpc_module_test.ip
}