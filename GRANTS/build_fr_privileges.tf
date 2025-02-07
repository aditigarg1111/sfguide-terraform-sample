# Grants for BUILD_FR create schema on all databases

# List of databases
locals {
  databases = [
    "${var.raw_db}",
    "${var.curated_db}",
    "${var.presentation_db}",
    "${var.data_science_db}"
  ]
}

# Grant CREATE SCHEMA privilege on each DATABASE to the BUILD_FR role
resource "snowflake_grant_privileges_to_account_role" "CREATE_SCHEMA_ON_DATABASES_TO_BUILD_FR" {
  for_each = toset(local.databases)

  account_role_name = "${var.environment}_BUILD_FR"  # Role to which the privilege is granted
  privileges        = ["CREATE SCHEMA"]

  on_account_object {
    object_type = "DATABASE"
    object_name = "${each.value}"  # Database name (RAW_DB, CURATED_DB, etc.)
  }
}

# grant imported privilge to BUILD_FR
resource "snowflake_grant_privileges_to_account_role" "IMPORTED_PRIVILEGES_ON_SHARED_DATABASE_TO_BUILD_FR" {
  account_role_name = "${var.environment}_BUILD_FR"  # Role name
  privileges        = ["IMPORTED PRIVILEGES"]

  on_account_object {
    object_type = "DATABASE"
    object_name = "WORLDWIDE_ADDRESS_DATA"  # Replace with the name of your shared database todo:
  }
}