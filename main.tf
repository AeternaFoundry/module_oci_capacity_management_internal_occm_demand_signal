resource "oci_capacity_management_internal_occm_demand_signal" "capacity_management_internal_occm_demand_signals" {
  for_each = var.capacity_management_internal_occm_demand_signals

  occm_demand_signal_id = each.value.occm_demand_signal_id
  lifecycle_details     = each.value.lifecycle_details

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

