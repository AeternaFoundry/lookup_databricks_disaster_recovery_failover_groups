variable "disaster_recovery_failover_groups_lookup" {
  description = <<EOT
Map of disaster_recovery_failover_groups_lookup, attributes below
Required:
    - parent
Optional:
    - page_size
EOT

  type = map(object({
    parent    = string
    page_size = optional(number)
  }))
}

