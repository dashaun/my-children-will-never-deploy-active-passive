variable "acre_client_protocol" {
  type    = string
  default = "Encrypted"
}

variable "acre_cluster_policy" {
  type    = string
  default = "EnterpriseCluster"
}

variable "acre_deployment_mode" {
  type    = string
  default = "Incremental"
}

variable "acre_eviction_policy" {
  type    = string
  default = "NoEviction"
}

variable "acre_group_nickname" {
  type    = string
  default = "kcjug"
}

variable "acre_sku" {
  type    = string
  default = "Enterprise_E10-2"
}

variable "cloud_name" {
  description = "The Azure cloud environment to use. Available values at https://www.terraform.io/docs/providers/azurerm/#environment"
  default     = "public"
  type        = string
}

variable "front_door_name" {
  description = "The name of the Azure Front Door to create."
  default     = "kcjug"
  type        = string
}

variable "identifier" {
  description = "The identifier to use for this deployment."
  default     = "bootiful"
  type        = string
}

variable "location0" {
  description = "The Azure location/region where the resources will be created."
  default     = "centralus"
  type        = string
}

variable "location1" {
  description = "The Azure location/region where the resources will be created."
  default     = "northeurope"
  type        = string
}

variable "location2" {
  description = "The Azure location/region where the resources will be created."
  default     = "eastus2"
  type        = string
}

variable "tags" {
  description = "Key/value tags to assign to all resources."
  default     = {}
  type        = map(string)
}
