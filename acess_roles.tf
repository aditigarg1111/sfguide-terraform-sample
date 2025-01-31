resource "snowflake_account_role" "PEARL_PRODUCT__PATIENT_RW_AR" {
  name    = format("%s_%s", var.environment, "PEARL_PRODUCT__PATIENT_RW_AR")
  comment = "read and write access role for pearl_product__patient"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PEARL_PRODUCT__PATIENT_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PEARL_PRODUCT__PATIENT_RW_AR.name
  }
}

resource "snowflake_account_role" "PEARL_PRODUCT__PATIENT_RO_AR" {
  name    = format("%s_%s", var.environment, "PEARL_PRODUCT__PATIENT_RO_AR")
  comment = "read access role for pearl_product__patient"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PEARL_PRODUCT__PATIENT_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PEARL_PRODUCT__PATIENT_RO_AR.name
  }
}

resource "snowflake_account_role" "PEARL_PRODUCT__AGG_RW_AR" {
  name    = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RW_AR")
  comment = "read and write access role for pearl_product__agg"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PEARL_PRODUCT__AGG_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PEARL_PRODUCT__AGG_RW_AR.name
  }
}

resource "snowflake_account_role" "PEARL_PRODUCT__AGG_RO_AR" {
  name    = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RO_AR")
  comment = "read access role for pearl_product__agg"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PEARL_PRODUCT__AGG_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PEARL_PRODUCT__AGG_RO_AR.name
  }
}

resource "snowflake_account_role" "PEARL_ALIGNMENT__PATIENT_RW_AR" {
  name    = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RW_AR")
  comment = "read and write access role for pearl_alignment__patient"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PEARL_ALIGNMENT__PATIENT_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RW_AR.name
  }
}

resource "snowflake_account_role" "PEARL_ALIGNMENT__PATIENT_RO_AR" {
  name    = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  comment = "read access role for pearl_alignment__patient"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PEARL_ALIGNMENT__PATIENT_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  }
}

resource "snowflake_account_role" "PEARL_ALIGNMENT__AGG_RW_AR" {
  name    = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RW_AR")
  comment = "read and write access role for pearl_alignment__agg"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PEARL_ALIGNMENT__AGG_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PEARL_ALIGNMENT__AGG_RW_AR.name
  }
}

resource "snowflake_account_role" "PEARL_ALIGNMENT__AGG_RO_AR" {
  name    = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  comment = "read access role for pearl_alignment__agg"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PEARL_ALIGNMENT__AGG_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  }
}

resource "snowflake_account_role" "CLAIMS__PATIENT_RW_AR" {
  name    = format("%s_%s", var.environment, "CLAIMS__PATIENT_RW_AR")
  comment = "read and write access role for claims__patient"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CLAIMS__PATIENT_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CLAIMS__PATIENT_RW_AR.name
  }
}

resource "snowflake_account_role" "CLAIMS__PATIENT_RO_AR" {
  name    = format("%s_%s", var.environment, "CLAIMS__PATIENT_RO_AR")
  comment = "read access role for claims__patient"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CLAIMS__PATIENT_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CLAIMS__PATIENT_RO_AR.name
  }
}

resource "snowflake_account_role" "CLAIMS__AGG_RW_AR" {
  name    = format("%s_%s", var.environment, "CLAIMS__AGG_RW_AR")
  comment = "read and write access role for claims__agg"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CLAIMS__AGG_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CLAIMS__AGG_RW_AR.name
  }
}

resource "snowflake_account_role" "CLAIMS__AGG_RO_AR" {
  name    = format("%s_%s", var.environment, "CLAIMS__AGG_RO_AR")
  comment = "read access role for claims__agg"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CLAIMS__AGG_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CLAIMS__AGG_RO_AR.name
  }
}

resource "snowflake_account_role" "ACTUARIAL_RW_AR" {
  name    = format("%s_%s", var.environment, "ACTUARIAL_RW_AR")
  comment = "read and write access role for actuarial"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "ACTUARIAL_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.ACTUARIAL_RW_AR.name
  }
}

resource "snowflake_account_role" "ACTUARIAL_RO_AR" {
  name    = format("%s_%s", var.environment, "ACTUARIAL_RO_AR")
  comment = "read access role for actuarial"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "ACTUARIAL_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.ACTUARIAL_RO_AR.name
  }
}

resource "snowflake_account_role" "PUBLIC_RW_AR" {
  name    = format("%s_%s", var.environment, "PUBLIC_RW_AR")
  comment = "read and write access role for public"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PUBLIC_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PUBLIC_RW_AR.name
  }
}

resource "snowflake_account_role" "PUBLIC_RO_AR" {
  name    = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  comment = "read access role for public"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PUBLIC_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PUBLIC_RO_AR.name
  }
}

resource "snowflake_account_role" "CUSTOMER_SUCCESS_RW_AR" {
  name    = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RW_AR")
  comment = "read and write access role for customer_success"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CUSTOMER_SUCCESS_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CUSTOMER_SUCCESS_RW_AR.name
  }
}

resource "snowflake_account_role" "CUSTOMER_SUCCESS_RO_AR" {
  name    = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  comment = "read access role for customer_success"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CUSTOMER_SUCCESS_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  }
}

resource "snowflake_account_role" "DS_PERFORMANCE_RW_AR" {
  name    = format("%s_%s", var.environment, "DS_PERFORMANCE_RW_AR")
  comment = "read and write access role for ds_performance"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "DS_PERFORMANCE_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.DS_PERFORMANCE_RW_AR.name
  }
}

resource "snowflake_account_role" "DS_PERFORMANCE_RO_AR" {
  name    = format("%s_%s", var.environment, "DS_PERFORMANCE_RO_AR")
  comment = "read access role for ds_performance"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "DS_PERFORMANCE_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.DS_PERFORMANCE_RO_AR.name
  }
}

resource "snowflake_account_role" "DS_PAYMENT_MODELING_RW_AR" {
  name    = format("%s_%s", var.environment, "DS_PAYMENT_MODELING_RW_AR")
  comment = "read and write access role for ds_payment_modeling"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "DS_PAYMENT_MODELING_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.DS_PAYMENT_MODELING_RW_AR.name
  }
}

resource "snowflake_account_role" "DS_PAYMENT_MODELING_RO_AR" {
  name    = format("%s_%s", var.environment, "DS_PAYMENT_MODELING_RO_AR")
  comment = "read access role for ds_payment_modeling"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "DS_PAYMENT_MODELING_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.DS_PAYMENT_MODELING_RO_AR.name
  }
}

resource "snowflake_account_role" "DSA_FEATURE_STORE_PATIENT_RW_AR" {
  name    = format("%s_%s", var.environment, "DSA_FEATURE_STORE_PATIENT_RW_AR")
  comment = "read and write access role for dsa_feature_store_patient"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "DSA_FEATURE_STORE_PATIENT_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.DSA_FEATURE_STORE_PATIENT_RW_AR.name
  }
}

resource "snowflake_account_role" "DSA_FEATURE_STORE_PATIENT_RO_AR" {
  name    = format("%s_%s", var.environment, "DSA_FEATURE_STORE_PATIENT_RO_AR")
  comment = "read access role for dsa_feature_store_patient"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "DSA_FEATURE_STORE_PATIENT_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.DSA_FEATURE_STORE_PATIENT_RO_AR.name
  }
}

resource "snowflake_account_role" "FINANCIAL_PERFORMANCE__PATIENT_RW_AR" {
  name    = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__PATIENT_RW_AR")
  comment = "read and write access role for financial_performance__patient"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "FINANCIAL_PERFORMANCE__PATIENT_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.FINANCIAL_PERFORMANCE__PATIENT_RW_AR.name
  }
}

resource "snowflake_account_role" "FINANCIAL_PERFORMANCE__PATIENT_RO_AR" {
  name    = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__PATIENT_RO_AR")
  comment = "read access role for financial_performance__patient"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "FINANCIAL_PERFORMANCE__PATIENT_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.FINANCIAL_PERFORMANCE__PATIENT_RO_AR.name
  }
}

resource "snowflake_account_role" "FINANCIAL_PERFORMANCE__AGG_RW_AR" {
  name    = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RW_AR")
  comment = "read and write access role for financial_performance__agg"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "FINANCIAL_PERFORMANCE__AGG_RW_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RW_AR.name
  }
}

resource "snowflake_account_role" "FINANCIAL_PERFORMANCE__AGG_RO_AR" {
  name    = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RO_AR")
  comment = "read and write access role for financial_performance__agg"
}
#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "FINANCIAL_PERFORMANCE__AGG_RO_AR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RO_AR.name
  }
}






