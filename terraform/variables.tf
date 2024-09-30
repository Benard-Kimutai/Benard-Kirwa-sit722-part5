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

variable "azure_client_id" {
  description = "Azure Client ID"
  type        = string
}

variable "azure_client_secret" {
  description = "Azure Client Secret"
  type        = string
}

variable "azure_tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "azure_subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}
