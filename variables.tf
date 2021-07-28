variable "project_id" {
  description = "GCP project ID"
  type        = string
  sensitive   = true
}

variable "gcp_region" {
  description = "GCP region"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "subnet_names" {
  description = "List of subnet names"
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "List of subnet prefixes"
  type        = list(string)
}

variable "routing_mode" {
  description = "GCP network-wide routing mode"
  type        = string
  default     = "REGIONAL"
}

variable "billing_tag" {
  description = "Existing Alkira tag"
  type        = string
}

variable "credential" {
  description = "Existing Alkira credential"
  type        = string
}

variable "segment" {
  description = "Existing Alkira segment"
  type        = string
}

variable "group" {
  description = "Existing Alkira group"
  type        = string
}

variable "cxp_region" {
  description = "CXP to connect VNet to"
  type        = string
}

variable "connector_size" {
  description = "Cloud connector size"
  type        = string
  default     = "SMALL"
}