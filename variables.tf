variable "capacity_management_internal_occm_demand_signals" {
  description = <<EOT
Map of capacity_management_internal_occm_demand_signals, attributes below
Required:
    - occm_demand_signal_id
Optional:
    - lifecycle_details
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    occm_demand_signal_id = string
    lifecycle_details     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

