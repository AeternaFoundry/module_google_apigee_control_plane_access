resource "google_apigee_control_plane_access" "apigee_control_plane_accesses" {
  for_each = var.apigee_control_plane_accesses

  name                           = each.value.name
  analytics_publisher_identities = each.value.analytics_publisher_identities
  synchronizer_identities        = each.value.synchronizer_identities

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

