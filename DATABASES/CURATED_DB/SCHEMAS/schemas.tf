resource "snowflake_schema" "PEARL_PRODUCT__PATIENT" {
  # provider = snowflake.env_sysadmin
  name     = "PEARL_PRODUCT__PATIENT"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_PEARL_PRODUCT__PATIENT_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.PEARL_PRODUCT__PATIENT.name)
  }
}

resource "snowflake_schema" "PEARL_PRODUCT__AGG" {
  # provider = snowflake.env_sysadmin
  name     = "PEARL_PRODUCT__AGG"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_PEARL_PRODUCT__AGG_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.PEARL_PRODUCT__AGG.name)
  }
}

resource "snowflake_schema" "PEARL_ALIGNMENT__PATIENT" {
  # provider = snowflake.env_sysadmin
  name     = "PEARL_ALIGNMENT__PATIENT"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_PEARL_ALIGNMENT__PATIENT_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.PEARL_ALIGNMENT__PATIENT.name)
  }
}

resource "snowflake_schema" "PEARL_ALIGNMENT__AGG" {
  # provider = snowflake.env_sysadmin
  name     = "PEARL_ALIGNMENT__AGG"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_PEARL_ALIGNMENT__AGG_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.PEARL_ALIGNMENT__AGG.name)
  }
}

resource "snowflake_schema" "CLAIMS__PATIENT" {
  # provider = snowflake.env_sysadmin
  name     = "CLAIMS__PATIENT"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_CLAIMS__PATIENT_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.CLAIMS__PATIENT.name)
  }
}

resource "snowflake_schema" "CLAIMS__AGG" {
  # provider = snowflake.env_sysadmin
  name     = "CLAIMS__AGG"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_CLAIMS__AGG_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.CLAIMS__AGG.name)
  }
}

resource "snowflake_schema" "ACTUARIAL" {
  # provider = snowflake.env_sysadmin
  name     = "ACTUARIAL"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_ACTUARIAL_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.ACTUARIAL.name)
  }
}

/*
resource "snowflake_schema" "PUBLIC" {
  # provider = snowflake.env_sysadmin
  name     = "PUBLIC"
  database = var.database
}
*/

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_PUBLIC_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, "PUBLIC")
  }
}

resource "snowflake_schema" "CUSTOMER_SUCCESS" {
  # provider = snowflake.env_sysadmin
  name     = "CUSTOMER_SUCCESS"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_CUSTOMER_SUCCESS_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.CUSTOMER_SUCCESS.name)
  }
}

resource "snowflake_schema" "DS_PERFORMANCE" {
  # provider = snowflake.env_sysadmin
  name     = "DS_PERFORMANCE"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_DS_PERFORMANCE_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.DS_PERFORMANCE.name)
  }
}

resource "snowflake_schema" "DS_PAYMENT_MODELING" {
  # provider = snowflake.env_sysadmin
  name     = "DS_PAYMENT_MODELING"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_DS_PAYMENT_MODELING_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.DS_PAYMENT_MODELING.name)
  }
}

resource "snowflake_schema" "DSA_FEATURE_STORE_PATIENT" {
  # provider = snowflake.env_sysadmin
  name     = "DSA_FEATURE_STORE_PATIENT"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_DSA_FEATURE_STORE_PATIENT_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.DSA_FEATURE_STORE_PATIENT.name)
  }
}

resource "snowflake_schema" "FINANCIAL_PERFORMANCE__PATIENT" {
  # provider = snowflake.env_sysadmin
  name     = "FINANCIAL_PERFORMANCE__PATIENT"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_FINANCIAL_PERFORMANCE__PATIENT_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.FINANCIAL_PERFORMANCE__PATIENT.name)
  }
}

resource "snowflake_schema" "FINANCIAL_PERFORMANCE__AGG" {
  # provider = snowflake.env_sysadmin
  name     = "FINANCIAL_PERFORMANCE__AGG"
  database = var.database
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CURATED_DB_FINANCIAL_PERFORMANCE__AGG_OWNERSHIP_GRANT" {
  account_role_name   = "SYSADMIN"
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = format("%s.%s", var.database, snowflake_schema.FINANCIAL_PERFORMANCE__AGG.name)
  }
}

output "FINANCIAL_PERFORMANCE__AGG" {
  value = snowflake_schema.FINANCIAL_PERFORMANCE__AGG.name
}
output "FINANCIAL_PERFORMANCE__PATIENT" {
  value = snowflake_schema.FINANCIAL_PERFORMANCE__PATIENT.name
}
output "DSA_FEATURE_STORE_PATIENT" {
  value = snowflake_schema.DSA_FEATURE_STORE_PATIENT.name
}
output "DS_PAYMENT_MODELING" {
  value = snowflake_schema.DS_PAYMENT_MODELING.name
}
output "DS_PERFORMANCE" {
  value = snowflake_schema.DS_PERFORMANCE.name
}
output "CUSTOMER_SUCCESS" {
  value = snowflake_schema.CUSTOMER_SUCCESS.name
}
output "ACTUARIAL" {
  value = snowflake_schema.ACTUARIAL.name
}
output "CLAIMS__AGG" {
  value = snowflake_schema.CLAIMS__AGG.name
}
output "CLAIMS__PATIENT" {
  value = snowflake_schema.CLAIMS__PATIENT.name
}
output "PEARL_ALIGNMENT__AGG" {
  value = snowflake_schema.PEARL_ALIGNMENT__AGG.name
}
output "PEARL_ALIGNMENT__PATIENT" {
  value = snowflake_schema.PEARL_ALIGNMENT__PATIENT.name
}
output "PEARL_PRODUCT__AGG" {
  value = snowflake_schema.PEARL_PRODUCT__AGG.name
}
output "PEARL_PRODUCT__PATIENT" {
  value = snowflake_schema.PEARL_PRODUCT__PATIENT.name
}