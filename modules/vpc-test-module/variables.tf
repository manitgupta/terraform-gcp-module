variable "network_name" {
  description = "Name of the network"
  type = string
  default = "tf-network"
}

variable "instance_name" {
  description = "Name of the instance"
  type = string
  default = "tf-instance"
}

variable "image_name" {
  description = "The image to be delpoyed on the instance"
  type        = string
  default     = "cos-cloud/cos-stable"
}

variable "machine_type" {
  description = "Machine type of the instance"
  type        = string
  default     = "f1-micro"
}

variable "zone" {
  description = "Zone to create the instance in"
  type = string
  default = "us-central1-a"
}

variable "tags" {
  description = "Tags to attach to the instance"
  type        = list(string)
  default     = ["web", "dev"]
}