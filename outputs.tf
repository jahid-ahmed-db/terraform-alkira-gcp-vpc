// GCP outputs
output "vpc_name" {
  description = "Name of VPC being created"
  value       = google_compute_network.vpc.name
}

output "vpc_id" {
  description = "GCP - VPC ID"
  value       = google_compute_network.vpc.id
}

output "network_self_link" {
  description = "URI of the VPC being created"
  value       = google_compute_network.vpc.self_link
}

output "subnet_id" {
  description = "List of subnet IDs"
  value       = google_compute_subnetwork.subnet.*.id
}

// Alkira outputs
output "billing_tags" {
  description = "Alkira billing tag"
  value       = alkira_connector_gcp_vpc.connector.billing_tags
}

output "cxp_region" {
  description = "CXP region"
  value       = alkira_connector_gcp_vpc.connector.cxp
}

output "connector_size" {
  description = "Connector size"
  value       = alkira_connector_gcp_vpc.connector.size
}

output "segment" {
  description = "Alkira segment"
  value       = alkira_connector_gcp_vpc.connector.segment
}

output "group" {
  description = "Alkira group"
  value       = alkira_connector_gcp_vpc.connector.group
}
