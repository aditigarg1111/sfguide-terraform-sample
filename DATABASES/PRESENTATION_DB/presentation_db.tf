resource "snowflake_database" "PRESENTATION_DB" {
  # provider = snowflake.sysadmin
  name    = "${var.environment}_PRESENTATION_DB"
  comment = "This is the Presentation database of the DEV environment"
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "PRESENTATION_DB_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "DATABASE"
    object_name = snowflake_database.PRESENTATION_DB.name
  }
}

output "presentation_db" {
  value = snowflake_database.PRESENTATION_DB.name
}

variable "environment" {
  type = string
}