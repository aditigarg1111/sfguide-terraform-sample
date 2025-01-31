resource "snowflake_schema" "PAYMENT_MODELLING" {
  # provider = snowflake.env_sysadmin
  name     = "PAYMENT_MODELLING"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "RAW_DB_PAYMENT_MODELLING_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.PAYMENT_MODELLING.name)
  }
}