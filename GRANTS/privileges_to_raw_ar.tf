# Grant USAGE privilege on the DATABASE to RW roles
resource "snowflake_grant_privileges_to_account_role" "USAGE_RAW_DATABASE_TO_RAW_RW_AR" {
  account_role_name = "${var.environment}_RAW_RW_AR"  # Role name
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "DATABASE"
    object_name = var.raw_db  # Granting usage on the RAW_DB database
  }
}

# Grant USAGE privilege on the DATABASE to RO roles
resource "snowflake_grant_privileges_to_account_role" "USAGE_RAW_DATABASE_TO_RAW_RO_AR" {
  account_role_name = "${var.environment}_RAW_RO_AR"  # Role name
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "DATABASE"
    object_name = var.raw_db  # Granting usage on the RAW_DB database
  }
}

# resource "snowflake_grant_privileges_to_account_role" "USAGE_ALL_SCHEMAS_TO_RAW_RW_FR" {
#   account_role_name = "RAW_RW_FR"  # Role name
#   privileges        = ["USAGE"]

#   on_schema {
#     all_schemas_in_database = "RAW_DB"  # Grant USAGE on all existing schemas in the RAW_DB database
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "FUTURE_USAGE_SCHEMAS_TO_RAW_RW_FR" {
#   account_role_name = "RAW_RW_FR"  # Role name
#   privileges        = ["USAGE"]

#   on_schema {
#     future_schemas_in_database = "RAW_DB"  # Grant USAGE on all future schemas in the RAW_DB database
#   }
# }