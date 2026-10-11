output "apigee_control_plane_accesses_id" {
  description = "Map of id values across all apigee_control_plane_accesses, keyed the same as var.apigee_control_plane_accesses except keys with no id are omitted"
  value       = { for k, v in google_apigee_control_plane_access.apigee_control_plane_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_control_plane_accesses_analytics_publisher_identities" {
  description = "Map of analytics_publisher_identities values across all apigee_control_plane_accesses, keyed the same as var.apigee_control_plane_accesses except keys with no analytics_publisher_identities are omitted"
  value       = { for k, v in google_apigee_control_plane_access.apigee_control_plane_accesses : k => v.analytics_publisher_identities if v.analytics_publisher_identities != null && length(v.analytics_publisher_identities) > 0 }
}
output "apigee_control_plane_accesses_name" {
  description = "Map of name values across all apigee_control_plane_accesses, keyed the same as var.apigee_control_plane_accesses except keys with no name are omitted"
  value       = { for k, v in google_apigee_control_plane_access.apigee_control_plane_accesses : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigee_control_plane_accesses_synchronizer_identities" {
  description = "Map of synchronizer_identities values across all apigee_control_plane_accesses, keyed the same as var.apigee_control_plane_accesses except keys with no synchronizer_identities are omitted"
  value       = { for k, v in google_apigee_control_plane_access.apigee_control_plane_accesses : k => v.synchronizer_identities if v.synchronizer_identities != null && length(v.synchronizer_identities) > 0 }
}

