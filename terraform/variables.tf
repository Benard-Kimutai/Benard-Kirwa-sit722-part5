# Sets global variables for this Terraform project.

variable "app_name" {
  description = "Library"
}

variable "location" {
  default = "australiaeast"  
}

variable "kubernetes_version" {    
  description = "1.30.1"
}
