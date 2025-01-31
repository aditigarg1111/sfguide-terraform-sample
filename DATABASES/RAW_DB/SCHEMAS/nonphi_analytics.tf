resource "snowflake_schema" "NONPHI_ANALYTICS" {
  # provider = snowflake.env_sysadmin
  name     = "NONPHI_ANALYTICS"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "RAW_DB_NONPHI_ANALYTICS_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.NONPHI_ANALYTICS.name)
  }
}