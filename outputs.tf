output "project_directory_path" {
  value       = databricks_directory.prod_directory.path
  description = "Path/Name of Azure Databricks workspace directory created for the project."
}

output "staging_service_principal_application_id" {
  value       = module.link_staging_sp.service_principal_application_id
  description = "Application ID of the created Azure Databricks service principal in the staging workspace. Identical to the Azure client ID of the linked AAD application associated with the service principal."
}

output "staging_service_principal_aad_token" {
  value       = module.link_staging_sp.service_principal_aad_token
  sensitive   = true
  description = "Sensitive AAD token value of the created Azure Databricks service principal in the staging workspace."
}

output "prod_service_principal_application_id" {
  value       = module.link_prod_sp.service_principal_application_id
  description = "Application ID of the created Azure Databricks service principal in the prod workspace. Identical to the Azure client ID of the linked AAD application associated with the service principal."
}

output "prod_service_principal_aad_token" {
  value       = module.link_prod_sp.service_principal_aad_token
  sensitive   = true
  description = "Sensitive AAD token value of the created Azure Databricks service principal in the prod workspace."
}
