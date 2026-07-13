variable "synapse_workspace_sql_aad_admins" {
  description = <<EOT
Map of synapse_workspace_sql_aad_admins, attributes below
Required:
    - login
    - object_id
    - synapse_workspace_id
    - tenant_id
EOT

  type = map(object({
    login                = string
    object_id            = string
    synapse_workspace_id = string
    tenant_id            = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_workspace_sql_aad_admins : (
        length(v.login) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_workspace_sql_aad_admins : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.object_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_workspace_sql_aad_admins : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.tenant_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

