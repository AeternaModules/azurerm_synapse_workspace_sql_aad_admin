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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_workspace_sql_aad_admin's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: login
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: object_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: tenant_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

