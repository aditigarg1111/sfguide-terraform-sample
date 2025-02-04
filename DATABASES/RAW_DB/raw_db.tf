resource "snowflake_database" "RAW_DB" {
  # provider = snowflake.sysadmin
  name    = "${var.environment}_RAW_DB"
  comment = "This is the Raw database of the DEV environment"
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "RAW_DB_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "DATABASE"
    object_name = snowflake_database.RAW_DB.name
  }
}

output "database" {
  value = snowflake_database.RAW_DB.name
}

variable "environment" {
  type = string
}
