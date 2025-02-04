resource "snowflake_database" "DATA_SCIENCE_DB" {
  # provider = snowflake.sysadmin
  name    = "${var.environment}_DATA_SCIENCE_DB"
  comment = "This is the Data_Science database of the DEV environment"
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "DATA_SCIENCE_DB_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "DATABASE"
    object_name = snowflake_database.DATA_SCIENCE_DB.name
  }
}

output "database" {
  value = snowflake_database.DATA_SCIENCE_DB.name
}

variable "environment" {
  type = string
}