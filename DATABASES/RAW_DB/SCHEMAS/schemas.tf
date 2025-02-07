#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "RAW_DB_PUBLIC_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, "PUBLIC")
  }
}

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

resource "snowflake_schema" "PAYMENT_MODELING" {
  # provider = snowflake.env_sysadmin
  name     = "PAYMENT_MODELING"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "RAW_DB_PAYMENT_MODELING_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.PAYMENT_MODELING.name)
  }
}

output "NONPHI_ANALYTICS" {
  value = snowflake_schema.NONPHI_ANALYTICS.name
}

output "PAYMENT_MODELING" {
  value = snowflake_schema.PAYMENT_MODELING.name
}