output "disaster_recovery_failover_groups_lookup_failover_groups" {
  description = "Map of failover_groups values across all disaster_recovery_failover_groups_lookup, keyed the same as var.disaster_recovery_failover_groups_lookup except keys with no failover_groups are omitted"
  value       = { for k, v in data.databricks_disaster_recovery_failover_groups.disaster_recovery_failover_groups_lookup : k => v.failover_groups if v.failover_groups != null && length(v.failover_groups) > 0 }
}
output "disaster_recovery_failover_groups_lookup_page_size" {
  description = "Map of page_size values across all disaster_recovery_failover_groups_lookup, keyed the same as var.disaster_recovery_failover_groups_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_disaster_recovery_failover_groups.disaster_recovery_failover_groups_lookup : k => v.page_size if v.page_size != null }
}
output "disaster_recovery_failover_groups_lookup_parent" {
  description = "Map of parent values across all disaster_recovery_failover_groups_lookup, keyed the same as var.disaster_recovery_failover_groups_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_disaster_recovery_failover_groups.disaster_recovery_failover_groups_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}

