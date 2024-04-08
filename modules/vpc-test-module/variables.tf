variable "network_name" {
  description = "Name of the network"
  type        = string
  default     = "tf-network"
}

variable "instance_config" {
  description = "Instance configuration object"
  type        = object({
    instance_name = optional(string, "tf-instance")
    image_name    = optional(string, "cos-cloud/cos-stable")
    machine_type  = optional(string, "f1-micro")
    zone          = optional(string, "us-central1-a")
    tags          = optional(list(string), ["web", "dev"])
  })
}