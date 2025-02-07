 # Singular object types for existing grants
locals {
    raw_object_types_singular = [
    "EXTERNAL TABLE",
    "TABLE",
    "VIEW",
    "MATERIALIZED VIEW",
    "STAGE",
    "FILE FORMAT",
    "SEQUENCE",
    "TASK",
    "STREAM",
    "DYNAMIC TABLE",
    "EVENT TABLE",
    "ALERT",
    "PIPE"
  ]
  raw_schemas_list = [
    "PUBLIC",
    "${var.NONPHI_ANALYTICS}",
    "${var.PAYMENT_MODELING}"
  ]

  # Plural object types for future grants
  raw_object_types_plural = [
  "EXTERNAL TABLES",
  "TABLES",
  "VIEWS",
  "MATERIALIZED VIEWS",
  "STAGES",
  "FILE FORMATS",
  "SEQUENCES",
  "FUNCTIONS",
  "PROCEDURES",
  "TASKS",
  "STREAMS",
  "DYNAMIC TABLES",
  "EVENT TABLES",
  "ALERTS",
  "PIPES"
  ]
}

# Create a list of schema-object_type pairs for future grants
locals {
  raw_schema_object_pairs_existing = flatten([
    for schema in local.raw_schemas_list : [
      for object_type in local.raw_object_types_singular : {
        schema      = schema
        object_type = object_type
      }
    ]
  ])
}

locals {
  raw_schema_object_pairs_future = flatten([
    for schema in local.raw_schemas_list : [
      for object_type in local.raw_object_types_plural : {
        schema      = schema
        object_type = object_type
      }
    ]
  ])
}

# Grant USAGE privilege on the DATABASE to RW roles
resource "snowflake_grant_privileges_to_account_role" "USAGE_RAW_DATABASE_TO_RAW_RW_AR" {
  account_role_name = "${var.environment}_RAW_RW_AR"  # Role name
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "DATABASE"
    object_name = var.raw_db  # Granting usage on the RAW_DB database
  }
}

# Grant USAGE privilege on the ALL Schemas to RW roles
resource "snowflake_grant_privileges_to_account_role" "USAGE_ALL_SCHEMAS_TO_RAW_RW_AR" {
  account_role_name = "${var.environment}_RAW_RW_AR"  # Role name
  privileges        = ["USAGE"]

  on_schema {
    all_schemas_in_database = var.raw_db  # Grant USAGE on all existing schemas in the RAW_DB database
  }
}

# Grant USAGE privilege on the ALL Future Schemas to RW roles
resource "snowflake_grant_privileges_to_account_role" "FUTURE_USAGE_SCHEMAS_TO_RAW_RW_AR" {
  account_role_name = "${var.environment}_RAW_RW_AR"  # Role name
  privileges        = ["USAGE"]

  on_schema {
    future_schemas_in_database = var.raw_db  # Grant USAGE on all future schemas in the RAW_DB database
  }
}

# Grant all privileges on all existing schemas in the database for specific object types
resource "snowflake_grant_privileges_to_account_role" "ALL_EXISTING_SCHEMAS_TO_DATABASE" {
  for_each = { for pair in local.raw_schema_object_pairs_existing : "${pair.schema}_${pair.object_type}" => pair }

  all_privileges    = true
  account_role_name = "${var.environment}_RAW_RW_AR"

  on_schema_object {
    object_type = each.value.object_type
    object_name = "${var.raw_db}.${each.value.schema}.*"
  }
}

# FUTURE GRANTS ON OBJECTS
resource "snowflake_grant_privileges_to_account_role" "ALL_FUTURE_SCHEMAS_TO_DATABASE" {
  for_each = { for pair in local.raw_schema_object_pairs_future : "${pair.schema}_${pair.object_type}" => pair }

  all_privileges    = true
  account_role_name = "${var.environment}_RAW_RW_AR"

  on_schema_object {
    future {
      object_type_plural = each.value.object_type
      in_schema          = "${var.raw_db}.${each.value.schema}"  # Fully qualified schema name
    }
  }
}

#----------------------------------------------Read Only
# Define the privileges for each object type for RO roles
locals {
  raw_ro_privileges = {
    "EXTERNAL TABLES"       = ["SELECT", "REFERENCES"]
    "TABLES"                = ["SELECT", "REFERENCES"]
    "VIEWS"                 = ["SELECT", "REFERENCES"]
    "MATERIALIZED VIEWS"    = ["SELECT", "REFERENCES"]
    "STAGES"                = ["USAGE", "READ"]
    "FILE FORMATS"          = ["USAGE"]
    "SEQUENCES"             = ["USAGE"]
    "FUNCTIONS"             = ["USAGE"]
    "PROCEDURES"            = ["USAGE"]
    "TASKS"                 = ["MONITOR"]
    "STREAMS"               = ["SELECT"]
    "DYNAMIC TABLES"        = ["SELECT"]
    "EVENT TABLES"          = ["SELECT"]
    "ALERTS"                = ["MONITOR"]
    "PIPES"                 = ["MONITOR"]
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

# Grant USAGE privilege on the ALL Schemas to RO roles
resource "snowflake_grant_privileges_to_account_role" "USAGE_ALL_SCHEMAS_TO_RAW_RO_AR" {
  account_role_name = "${var.environment}_RAW_RO_AR"  # Role name
  privileges        = ["USAGE"]

  on_schema {
    all_schemas_in_database = var.raw_db  # Grant USAGE on all existing schemas in the RAW_DB database
  }
}

# Grant USAGE privilege on the ALL Future Schemas to RO roles
resource "snowflake_grant_privileges_to_account_role" "FUTURE_USAGE_SCHEMAS_TO_RAW_RO_AR" {
  account_role_name = "${var.environment}_RAW_RO_AR"  # Role name
  privileges        = ["USAGE"]

  on_schema {
    future_schemas_in_database = var.raw_db  # Grant USAGE on all future schemas in the RAW_DB database
  }
}

# FUTURE GRANTS ON OBJECTS FOR RO ROLES
resource "snowflake_grant_privileges_to_account_role" "FUTURE_OBJECTS_TO_SCHEMAS_RAW_RO_AR" {
  for_each = { for pair in local.raw_schema_object_pairs_future : "${pair.schema}_${pair.object_type}" => pair }

  privileges        = lookup(local.raw_ro_privileges, each.value.object_type, [])  # Lookup privileges for the object type
  account_role_name = "${var.environment}_RAW_RO_AR"  # RO role name format <SCHEMA>_RO_AR

  on_schema_object {
    future {
      object_type_plural = each.value.object_type
      in_schema          = "${var.raw_db}.${each.value.schema}"  # Fully qualified schema name
    }
  }
}