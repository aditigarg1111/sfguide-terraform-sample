resource "snowflake_database" "CURATED_DB" {
  # provider = snowflake.sysadmin
  name    = "${var.environment}_CURATED_DB"
  comment = "This is the Curated database of the DEV environment"
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "DATABASE"
    object_name = snowflake_database.CURATED_DB.name
  }
}

output "database" {
  value = snowflake_database.CURATED_DB.name
}

variable "environment" {
  type = string
}
