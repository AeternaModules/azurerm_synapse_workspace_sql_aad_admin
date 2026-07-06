output "synapse_workspace_sql_aad_admins" {
  description = "All synapse_workspace_sql_aad_admin resources"
  value       = azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins
}
output "synapse_workspace_sql_aad_admins_login" {
  description = "List of login values across all synapse_workspace_sql_aad_admins"
  value       = [for k, v in azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins : v.login]
}
output "synapse_workspace_sql_aad_admins_object_id" {
  description = "List of object_id values across all synapse_workspace_sql_aad_admins"
  value       = [for k, v in azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins : v.object_id]
}
output "synapse_workspace_sql_aad_admins_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_workspace_sql_aad_admins"
  value       = [for k, v in azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins : v.synapse_workspace_id]
}
output "synapse_workspace_sql_aad_admins_tenant_id" {
  description = "List of tenant_id values across all synapse_workspace_sql_aad_admins"
  value       = [for k, v in azurerm_synapse_workspace_sql_aad_admin.synapse_workspace_sql_aad_admins : v.tenant_id]
}

