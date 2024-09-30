# Sets global variables for this Terraform project.

variable "app_name" {
  default = "Library"
}

variable "location" {
  default = "australiaeast"  
}

variable "kubernetes_version" {    
  default = "1.30.1"
}

