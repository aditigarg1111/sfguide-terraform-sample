locals {
  schemas = [
    "${var.PEARL_PRODUCT__PATIENT}",
    "${var.PEARL_PRODUCT__AGG}",
    "${var.PEARL_ALIGNMENT__PATIENT}",
    "${var.PEARL_ALIGNMENT__AGG}",
    "${var.CLAIMS__PATIENT}",
    "${var.CLAIMS__AGG}",
    "${var.ACTUARIAL}",
    "PUBLIC",
    "${var.CUSTOMER_SUCCESS}",
    "${var.DS_PERFORMANCE}",
    "${var.DS_PAYMENT_MODELING}",
    "${var.DSA_FEATURE_STORE_PATIENT}",
    "${var.FINANCIAL_PERFORMANCE__PATIENT}",
    "${var.FINANCIAL_PERFORMANCE__AGG}"
  ]

  # Plural object types for future grants
  object_types_plural = [
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

  # Singular object types for existing grants
  object_types_singular = [
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
}


# Grant USAGE privilege on the DATABASE 
resource "snowflake_grant_privileges_to_account_role" "USAGE_DATABASE_TO_SCHEMA_ROLES_RW" {
  for_each = toset(local.schemas)

  account_role_name = "${var.environment}_${each.value}_RW_AR"  # Role name format <SCHEMA>_RW_AR
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "DATABASE"
    object_name = var.curated_db  # Granting usage on the database
  }
}

# Grant USAGE privilege on each SCHEMA 
resource "snowflake_grant_privileges_to_account_role" "USAGE_SCHEMA_TO_SCHEMA_ROLES_RW" {
  for_each = toset(local.schemas)

  account_role_name = "${var.environment}_${each.value}_RW_AR"  # Role name format <SCHEMA>_RW_AR
  privileges        = ["USAGE"]

  on_schema {
    schema_name = "${var.curated_db}.${each.value}"  # Fully qualified schema name
  }
}

# Grant USAGE privilege on future SCHEMA 
resource "snowflake_grant_privileges_to_account_role" "FUTURE_USAGE_SCHEMA_TO_SCHEMA_ROLES_RW" {
  for_each = toset(local.schemas)

  account_role_name = "${var.environment}_${each.value}_RW_AR"  # Role name format <SCHEMA>_RW_AR
  privileges        = ["USAGE"]

  on_schema {
    future_schemas_in_database = var.curated_db  # Grant USAGE on all future schemas in this database
  }
}

# Create a list of schema-object_type pairs for future grants
locals {
  schema_object_pairs_future = flatten([
    for schema in local.schemas : [
      for object_type in local.object_types_plural : {
        schema      = schema
        object_type = object_type
      }
    ]
  ])
}

# Create a list of schema-object_type pairs for existing grants
locals {
  schema_object_pairs_existing = flatten([
    for schema in local.schemas : [
      for object_type in local.object_types_singular : {
        schema      = schema
        object_type = object_type
      }
    ]
  ])
}

# FUTURE GRANTS ON OBJECTS
resource "snowflake_grant_privileges_to_account_role" "ALL_FUTURE_OBJECTS_TO_SCHEMAS_RW_AR" {
  for_each = { for pair in local.schema_object_pairs_future : "${pair.schema}_${pair.object_type}" => pair }

  all_privileges    = true
  account_role_name = "${var.environment}_${each.value.schema}_RW_AR"

  on_schema_object {
    future {
      object_type_plural = each.value.object_type
      in_schema          = "${var.curated_db}.${each.value.schema}"  # Fully qualified schema name
    }
  }
}

# GRANT PRIVILEGES ON EXISTING OBJECTS
resource "snowflake_grant_privileges_to_account_role" "ALL_EXISTING_OBJECTS_TO_SCHEMAS_RW_AR" {
  for_each = { for pair in local.schema_object_pairs_existing : "${pair.schema}_${pair.object_type}" => pair }

  all_privileges    = true  # Set all privileges to true
  account_role_name = "${var.environment}_${each.value.schema}_RW_AR"

  on_schema_object {
    object_type = each.value.object_type
    object_name = "${var.curated_db}.${each.value.schema}.*"  # Fully qualified schema name with wildcard for all objects
  }
}

#---------------------------------------------------------------------READ ONLY 
# Grant USAGE privilege on the DATABASE 
resource "snowflake_grant_privileges_to_account_role" "USAGE_DATABASE_TO_SCHEMA_ROLES_RO" {
  for_each = toset(local.schemas)

  account_role_name = "${var.environment}_${each.value}_RO_AR"  # Role name format <SCHEMA>_RO_AR
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "DATABASE"
    object_name = var.curated_db  # Granting usage on the database
  }
}

# Grant USAGE privilege on each SCHEMA 
resource "snowflake_grant_privileges_to_account_role" "USAGE_SCHEMA_TO_SCHEMA_ROLES_RO" {
  for_each = toset(local.schemas)

  account_role_name = "${var.environment}_${each.value}_RO_AR"  # Role name format <SCHEMA>_RO_AR
  privileges        = ["USAGE"]

  on_schema {
    schema_name = "${var.curated_db}.${each.value}"  # Fully qualified schema name
  }
}

# Grant USAGE privilege on future SCHEMA 
resource "snowflake_grant_privileges_to_account_role" "FUTURE_USAGE_SCHEMA_TO_SCHEMA_ROLES_RO" {
  for_each = toset(local.schemas)

  account_role_name = "${var.environment}_${each.value}_RO_AR"  # Role name format <SCHEMA>_RO_AR
  privileges        = ["USAGE"]

  on_schema {
    future_schemas_in_database = var.curated_db  # Grant USAGE on all future schemas in this database
  }
}

# Define the privileges for each object type for RO roles
locals {
  ro_privileges = {
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

# FUTURE GRANTS ON OBJECTS FOR RO ROLES
resource "snowflake_grant_privileges_to_account_role" "FUTURE_OBJECTS_TO_SCHEMAS_RO_AR" {
  for_each = { for pair in local.schema_object_pairs_future : "${pair.schema}_${pair.object_type}" => pair }

  privileges        = lookup(local.ro_privileges, each.value.object_type, [])  # Lookup privileges for the object type
  account_role_name = "${var.environment}_${each.value.schema}_RO_AR"  # RO role name format <SCHEMA>_RO_AR

  on_schema_object {
    future {
      object_type_plural = each.value.object_type
      in_schema          = "${var.curated_db}.${each.value.schema}"  # Fully qualified schema name
    }
  }
}

