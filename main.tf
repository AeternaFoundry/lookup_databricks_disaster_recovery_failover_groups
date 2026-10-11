data "databricks_disaster_recovery_failover_groups" "disaster_recovery_failover_groups_lookup" {
  for_each = var.disaster_recovery_failover_groups_lookup

  parent    = each.value.parent
  page_size = each.value.page_size
}

