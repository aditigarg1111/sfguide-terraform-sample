# Grant USAGE privilege on BUILD_WH to BUILD_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_BUILD_WH_TO_BUILD_FR" {
  account_role_name = format("%s_%s", var.environment, "BUILD_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "BUILD_WH")
  }
}

# Grant USAGE privilege on ACO_OPS_WH to ACO_OPS_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_ACO_OPS_WH_TO_ACO_OPS_FR" {
  account_role_name = format("%s_%s", var.environment, "ACO_OPS_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "ACO_OPS_WH")
  }
}

# Grant USAGE privilege on CLINICAL_STRATEGY_WH to CLINICAL_STRATEGY_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_CLINICAL_STRATEGY_WH_TO_CLINICAL_STRATEGY_FR" {
  account_role_name = format("%s_%s", var.environment, "CLINICAL_STRATEGY_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "CLINICAL_STRATEGY_WH")
  }
}

# Grant USAGE privilege on FINANCE_WH to FINANCE_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_FINANCE_WH_TO_FINANCE_FR" {
  account_role_name = format("%s_%s", var.environment, "FINANCE_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "FINANCE_WH")
  }
}

# Grant USAGE privilege on ACTUARIAL_WH to ACTUARIAL_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_ACTUARIAL_WH_TO_ACTUARIAL_FR" {
  account_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "ACTUARIAL_WH")
  }
}

# Grant USAGE privilege on ENGINEERING_WH to ENGINEERING_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_ENGINEERING_WH_TO_ENGINEERING_FR" {
  account_role_name = format("%s_%s", var.environment, "ENGINEERING_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "ENGINEERING_WH")
  }
}

# Grant USAGE privilege on PAYMENT_MODELING_WH to PAYMENT_MODELING_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_PAYMENT_MODELING_WH_TO_PAYMENT_MODELING_FR" {
  account_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "PAYMENT_MODELING_WH")
  }
}

# Grant USAGE privilege on PERFORMANCE_WH to PERFORMANCE_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_PERFORMANCE_WH_TO_PERFORMANCE_FR" {
  account_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "PERFORMANCE_WH")
  }
}

# Grant USAGE privilege on ANALYTICS_WH to ANALYTICS_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_ANALYTICS_WH_TO_ANALYTICS_FR" {
  account_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "ANALYTICS_WH")
  }
}

# Grant USAGE privilege on PRODUCT_DESIGN_WH to PRODUCT_DESIGN_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_PRODUCT_DESIGN_WH_TO_PRODUCT_DESIGN_FR" {
  account_role_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_WH")
  }
}

# Grant USAGE privilege on CUSTOMER_SUCCESS_WH to CUSTOMER_SUCCESS_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_CUSTOMER_SUCCESS_WH_TO_CUSTOMER_SUCCESS_FR" {
  account_role_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_WH")
  }
}

# Grant USAGE privilege on PERFORMANCE_OPS_WH to PERFORMANCE_OPS_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_PERFORMANCE_OPS_WH_TO_PERFORMANCE_OPS_FR" {
  account_role_name = format("%s_%s", var.environment, "PERFORMANCE_OPS_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "PERFORMANCE_OPS_WH")
  }
}

# Grant USAGE privilege on GROWTH_WH to GROWTH_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_GROWTH_WH_TO_GROWTH_FR" {
  account_role_name = format("%s_%s", var.environment, "GROWTH_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "GROWTH_WH")
  }
}

# Grant USAGE privilege on GROWTH_ENABLEMENT_WH to GROWTH_ENABLEMENT_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_GROWTH_ENABLEMENT_WH_TO_GROWTH_ENABLEMENT_FR" {
  account_role_name = format("%s_%s", var.environment, "GROWTH_ENABLEMENT_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "GROWTH_ENABLEMENT_WH")
  }
}

# Grant USAGE privilege on MARKETING_WH to MARKETING_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_MARKETING_WH_TO_MARKETING_FR" {
  account_role_name = format("%s_%s", var.environment, "MARKETING_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "MARKETING_WH")
  }
}

# Grant USAGE privilege on CORPORATE_WH to CORPORATE_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_CORPORATE_WH_TO_CORPORATE_FR" {
  account_role_name = format("%s_%s", var.environment, "CORPORATE_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "CORPORATE_WH")
  }
}

# Grant USAGE privilege on SERVICE_ACCOUNT_WH to SERVICE_ACCOUNT_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_SERVICE_ACCOUNT_WH_TO_SERVICE_ACCOUNT_FR" {
  account_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_WH")
  }
}