#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "DATA_SCIENCE_DB_PUBLIC_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, "PUBLIC")
  }
}