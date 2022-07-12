terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = ">= 0.5.8"
    }
  }
}

provider "databricks" {
  alias = "staging"
}

provider "databricks" {
  alias = "prod"
}

module "mlops_azure_project_with_sp_linking" {
  source = "../."
  providers = {
    databricks.staging = databricks.staging
    databricks.prod    = databricks.prod
  }
  service_principal_name  = "example-name"
  project_directory_path  = "/dir-name"
  azure_staging_client_id = "k9l8m7n6o5-e5f6-g7h8-i9j0-a1b2c3d4p4"
  azure_prod_client_id    = "k9l8m7n6p4-e5f6-g7h8-i9j0-a1b2c3d4o5"
}