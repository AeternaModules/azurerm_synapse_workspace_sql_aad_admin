output "synapse_workspace_sql_aad_admins_login" {
  description = "Map of login values across all synapse_workspace_sql_aad_admins, keyed the same as var.synapse_workspace_sql_aad_admins"
  value       = { for k, v in azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins : k => v.login }
}
output "synapse_workspace_sql_aad_admins_object_id" {
  description = "Map of object_id values across all synapse_workspace_sql_aad_admins, keyed the same as var.synapse_workspace_sql_aad_admins"
  value       = { for k, v in azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins : k => v.object_id }
}
output "synapse_workspace_sql_aad_admins_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_workspace_sql_aad_admins, keyed the same as var.synapse_workspace_sql_aad_admins"
  value       = { for k, v in azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins : k => v.synapse_workspace_id }
}
output "synapse_workspace_sql_aad_admins_tenant_id" {
  description = "Map of tenant_id values across all synapse_workspace_sql_aad_admins, keyed the same as var.synapse_workspace_sql_aad_admins"
  value       = { for k, v in azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins : k => v.tenant_id }
}

