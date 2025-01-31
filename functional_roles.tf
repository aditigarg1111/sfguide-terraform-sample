resource "snowflake_account_role" "ACO_OPS_FR" {
  name    = format("%s_%s", var.environment, "ACO_OPS_FR")
  comment = "Role for ACO Operations department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "ACO_OPS_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.ACO_OPS_FR.name
  }
}

resource "snowflake_account_role" "CLINICAL_STRATEGY_FR" {
  name    = format("%s_%s", var.environment, "CLINICAL_STRATEGY_FR")
  comment = "Role for Clinical Strategy department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CLINICAL_STRATEGY_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CLINICAL_STRATEGY_FR.name
  }
}

resource "snowflake_account_role" "FINANCE_FR" {
  name    = format("%s_%s", var.environment, "FINANCE_FR")
  comment = "Role for Finance department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "FINANCE_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.FINANCE_FR.name
  }
}

resource "snowflake_account_role" "ACTUARIAL_FR" {
  name    = format("%s_%s", var.environment, "ACTUARIAL_FR")
  comment = "Role for Actuarial department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "ACTUARIAL_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.ACTUARIAL_FR.name
  }
}

resource "snowflake_account_role" "ENGINEERING_FR" {
  name    = format("%s_%s", var.environment, "ENGINEERING_FR")
  comment = "Role for Engineering department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "ENGINEERING_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.ENGINEERING_FR.name
  }
}

resource "snowflake_account_role" "PAYMENT_MODELING_FR" {
  name    = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
  comment = "Role for Data Science & Analytics (DSA)'s Payment Modeling department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PAYMENT_MODELING_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PAYMENT_MODELING_FR.name
  }
}

resource "snowflake_account_role" "PERFORMANCE_FR" {
  name    = format("%s_%s", var.environment, "PERFORMANCE_FR")
  comment = "Role for Data Science & Analytics (DSA)'s Performance department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PERFORMANCE_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PERFORMANCE_FR.name
  }
}

resource "snowflake_account_role" "ANALYTICS_FR" {
  name    = format("%s_%s", var.environment, "ANALYTICS_FR")
  comment = "Role for Data Science & Analytics (DSA)'s Analytics department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "ANALYTICS_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.ANALYTICS_FR.name
  }
}

resource "snowflake_account_role" "PRODUCT_DESIGN_FR" {
  name    = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
  comment = "Role for Product and User Experience departments"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PRODUCT_DESIGN_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PRODUCT_DESIGN_FR.name
  }
}

resource "snowflake_account_role" "CUSTOMER_SUCCESS_FR" {
  name    = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
  comment = "Role for Customer Success department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CUSTOMER_SUCCESS_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
  }
}

resource "snowflake_account_role" "PERFORMANCE_OPS_FR" {
  name    = format("%s_%s", var.environment, "PERFORMANCE_OPS_FR")
  comment = "Role for Performance Operations department"
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "PERFORMANCE_OPS_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.PERFORMANCE_OPS_FR.name
  }
}

resource "snowflake_account_role" "GROWTH_FR" {
  name    = format("%s_%s", var.environment, "GROWTH_FR")
  comment = "Role for Growth department. This group should not be able to view PHI anywhere."
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "GROWTH_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.GROWTH_FR.name
  }
}

resource "snowflake_account_role" "GROWTH_ENABLEMENT_FR" {
  name    = format("%s_%s", var.environment, "GROWTH_ENABLEMENT_FR")
  comment = "Role for Growth Enablement department. This group should not be able to view PHI anywhere."
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "GROWTH_ENABLEMENT_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.GROWTH_ENABLEMENT_FR.name
  }
}

resource "snowflake_account_role" "MARKETING_FR" {
  name    = format("%s_%s", var.environment, "MARKETING_FR")
  comment = "Role for Marketing department. This group should not be able to view PHI anywhere."
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "MARKETING_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.MARKETING_FR.name
  }
}

resource "snowflake_account_role" "CORPORATE_FR" {
  name    = format("%s_%s", var.environment, "CORPORATE_FR")
  comment = "Role for All other Management-level users. This group should not be able to view PHI anywhere."
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "CORPORATE_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.CORPORATE_FR.name
  }
}

resource "snowflake_account_role" "SERVICE_ACCOUNT_FR" {
  name    = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
  comment = "Role for "
}

#grant ownership to USERADMIN
resource "snowflake_grant_ownership" "SERVICE_ACCOUNT_FR_OWNERSHIP_GRANT" {
  account_role_name = "USERADMIN"
  on {
    object_type = "ROLE"
    object_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
  }
}

