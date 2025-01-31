resource "snowflake_schema" "HUBSPOT" {
  # provider = snowflake.env_sysadmin
  name     = "HUBSPOT"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "RAW_DB_HUBSPOT_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.HUBSPOT.name)
  }
}