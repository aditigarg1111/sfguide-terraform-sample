# grant all privileges PRIVILEGE on PRESENTATION_DB to PRESENTATION_RW_AR
resource "snowflake_grant_privileges_to_account_role" "ALL_PRIVILEGES_PRESENTATION_DB_TO_PRESENTATION_RW_AR" {
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  all_privileges    = true
  on_account_object {
    object_type = "DATABASE"
    object_name = var.presentation_db
  }
}

# grant USAGE PRIVILEGE on PRESENTATION_DB to PRESENTATION_RO_AR
resource "snowflake_grant_privileges_to_account_role" "USAGE_PRESENTATION_DB_TO_PRESENTATION_RO_AR" {
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "DATABASE"
    object_name = var.presentation_db
  }
}

# grant all privileges on all schemas in database PRESENTATION_DB to role PRESENTATION_RW_AR
resource "snowflake_grant_privileges_to_account_role" "ALL_PRIVILEGES_PRESENTATION_DB_SCHEMAS_TO_PRESENTATION_RW_AR" {
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  all_privileges    = true
  on_schema {
    all_schemas_in_database = var.presentation_db
  }
}

# grant usage on all schemas in database PRESENTATION_DB to role PRESENTATION_RO_AR
resource "snowflake_grant_privileges_to_account_role" "USAGE_PRESENTATION_DB_SCHEMAS_TO_PRESENTATION_RO_AR" {
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  privileges        = ["USAGE"]
  on_schema {
    all_schemas_in_database = var.presentation_db
  }
}

# grant all privileges on future schemas in database PRESENTATION_DB to role PRESENTATION_RW_AR
resource "snowflake_grant_privileges_to_account_role" "ALL_PRIVILEGES_PRESENTATION_DB_FUTURE_SCHEMAS_TO_PRESENTATION_RW_AR" {
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  all_privileges    = true
  on_schema {
    future_schemas_in_database = var.presentation_db
  }
}

# grant usage on future schemas in database PRESENTATION_DB to role PRESENTATION_RO_AR
resource "snowflake_grant_privileges_to_account_role" "USAGE_PRESENTATION_DB_FUTURE_SCHEMAS_TO_PRESENTATION_RO_AR" {
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  privileges        = ["USAGE"]
  on_schema {
    future_schemas_in_database = var.presentation_db
  }
}


# Grant future read only access on PRESENTATION_DB database objects to role PRESENTATION_RO_AR

# grant select on all future tables
resource "snowflake_grant_privileges_to_account_role" "SELECT_PRESENTATION_DB_FUTURE_TABLES_TO_PRESENTATION_RO_AR" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_database        = var.presentation_db
    }
  }
}

# grant select on all future views
resource "snowflake_grant_privileges_to_account_role" "SELECT_PRESENTATION_DB_FUTURE_VIEWS_TO_PRESENTATION_RO_AR" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "VIEWS"
      in_database        = var.presentation_db
    }
  }
}

# grant select and references on all future materialized views
resource "snowflake_grant_privileges_to_account_role" "SELECT_PRESENTATION_DB_FUTURE_MATERIALIZED_VIEWS_TO_PRESENTATION_RO_AR" {
  privileges        = ["SELECT", "REFERENCES"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "MATERIALIZED VIEWS"
      in_database        = var.presentation_db
    }
  }
}

# grant select on all future external tables
resource "snowflake_grant_privileges_to_account_role" "SELECT_PRESENTATION_DB_FUTURE_EXTERNAL_TABLES_TO_PRESENTATION_RO_AR" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "EXTERNAL TABLES"
      in_database        = var.presentation_db
    }
  }
}

# grant usage on all future sequences
resource "snowflake_grant_privileges_to_account_role" "USAGE_PRESENTATION_DB_FUTURE_SEQUENCES_TO_PRESENTATION_RO_AR" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "SEQUENCES"
      in_database        = var.presentation_db
    }
  }
}

# grant monitor on all future pipes
resource "snowflake_grant_privileges_to_account_role" "MONITOR_PRESENTATION_DB_FUTURE_PIPES_TO_PRESENTATION_RO_AR" {
  privileges        = ["MONITOR"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "PIPES"
      in_database        = var.presentation_db
    }
  }
}

# grant usage on all future procedures
resource "snowflake_grant_privileges_to_account_role" "USAGE_PRESENTATION_DB_FUTURE_PROCEDURES_TO_PRESENTATION_RO_AR" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "PROCEDURES"
      in_database        = var.presentation_db
    }
  }
}

# grant usage on all future functions
resource "snowflake_grant_privileges_to_account_role" "USAGE_PRESENTATION_DB_FUTURE_FUNCTIONS_TO_PRESENTATION_RO_AR" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "FUNCTIONS"
      in_database        = var.presentation_db
    }
  }
}

# grant monitor on all future tasks
resource "snowflake_grant_privileges_to_account_role" "MONITOR_PRESENTATION_DB_FUTURE_TASKS_TO_PRESENTATION_RO_AR" {
  privileges        = ["MONITOR"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "TASKS"
      in_database        = var.presentation_db
    }
  }
}

# grant select on all future streams
resource "snowflake_grant_privileges_to_account_role" "SELECT_PRESENTATION_DB_FUTURE_STREAMS_TO_PRESENTATION_RO_AR" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "STREAMS"
      in_database        = var.presentation_db
    }
  }
}

# grant usage and read on all future stages
resource "snowflake_grant_privileges_to_account_role" "USAGE_READ_PRESENTATION_DB_FUTURE_STAGES_TO_PRESENTATION_RO_AR" {
  privileges        = ["USAGE", "READ"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "STAGES"
      in_database        = var.presentation_db
    }
  }
}

# grant usage on all future file formats
resource "snowflake_grant_privileges_to_account_role" "USAGE_PRESENTATION_DB_FUTURE_FILE_FORMATS_TO_PRESENTATION_RO_AR" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.PRESENTATION_RO_AR.name
  on_schema_object {
    future {
      object_type_plural = "FILE FORMATS"
      in_database        = var.presentation_db
    }
  }
}


# Grant future ALL access on PRESENTATION_db database objects to role PRESENTATION_RW_AR

# grant ALL on all future tables
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_TABLES_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future views
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_VIEWS_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "VIEWS"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future materialized views
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_MATERIALIZED_VIEWS_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "MATERIALIZED VIEWS"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future external tables
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_EXTERNAL_TABLES_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "EXTERNAL TABLES"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future file formats
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_FILE_FORMATS_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "FILE FORMATS"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL and read on all future stages
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_STAGES_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "STAGES"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future streams
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_STREAMS_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "STREAMS"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future tasks
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_TASKS_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "TASKS"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future functions
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_FUNCTIONS_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "FUNCTIONS"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future procedures
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_PROCEDURES_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "PROCEDURES"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future pipes
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_PIPES_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "PIPES"
      in_database        = var.presentation_db
    }
  }
}

# grant ALL on all future sequences
resource "snowflake_grant_privileges_to_account_role" "ALL_PRESENTATION_DB_FUTURE_SEQUENCES_TO_PRESENTATION_RW_AR" {
  all_privileges    = true
  account_role_name = snowflake_account_role.PRESENTATION_RW_AR.name
  on_schema_object {
    future {
      object_type_plural = "SEQUENCES"
      in_database        = var.presentation_db
    }
  }
}