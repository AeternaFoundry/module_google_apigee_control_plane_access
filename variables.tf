variable "apigee_control_plane_accesses" {
  description = <<EOT
Map of apigee_control_plane_accesses, attributes below
Required:
    - name
Optional:
    - analytics_publisher_identities
    - synchronizer_identities
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                           = string
    analytics_publisher_identities = optional(list(string))
    synchronizer_identities        = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

