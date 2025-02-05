#grant BUILD_FR to SYSADMIN
resource "snowflake_grant_account_role" "BUILD_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "BUILD_FR")
  parent_role_name = "SYSADMIN"
}

#grant RAW_FR to BUILD_FR
resource "snowflake_grant_account_role" "RAW_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "RAW_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant ACO_OPS_FR to BUILD_FR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "ACO_OPS_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant CLINICAL_STRATEGY_FR to BUILD_FR
resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "CLINICAL_STRATEGY_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant FINANCE_FR to BUILD_FR
resource "snowflake_grant_account_role" "FINANCE_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "FINANCE_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant ACTUARIAL_FR to BUILD_FR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "ACTUARIAL_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant ENGINEERING_FR to BUILD_FR
resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "ENGINEERING_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant PAYMENT_MODELING_FR to BUILD_FR
resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant PERFORMANCE_FR to BUILD_FR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "PERFORMANCE_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant ANALYTICS_FR to BUILD_FR
resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "ANALYTICS_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant PRODUCT_DESIGN_FR to BUILD_FR
resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant CUSTOMER_SUCCESS_FR to BUILD_FR
resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant PERFORMANCE_OPS_FR to BUILD_FR
resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "PERFORMANCE_OPS_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant GROWTH_FR to BUILD_FR
resource "snowflake_grant_account_role" "GROWTH_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "GROWTH_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant GROWTH_ENABLEMENT_FR to BUILD_FR
resource "snowflake_grant_account_role" "GROWTH_ENABLEMENT_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "GROWTH_ENABLEMENT_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant MARKETING_FR to BUILD_FR
resource "snowflake_grant_account_role" "MARKETING_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "MARKETING_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant CORPORATE_FR to BUILD_FR
resource "snowflake_grant_account_role" "CORPORATE_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "CORPORATE_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant SERVICE_ACCOUNT_FR to BUILD_FR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT" {
  role_name        = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
  parent_role_name = format("%s_%s", var.environment, "BUILD_FR")
}

#grant RAW_RW_AR to RAW_FR
resource "snowflake_grant_account_role" "RAW_FR_GRANT_RAW_RW_AR" {
  role_name        = format("%s_%s", var.environment, "RAW_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "RAW_FR")
}

#grant RAW_RO_AR to RAW_FR
resource "snowflake_grant_account_role" "RAW_FR_GRANT_RAW_RO_AR" {
  role_name        = format("%s_%s", var.environment, "RAW_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "RAW_FR")
}

# PEARL_PRODUCT__PATIENT_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_PEARL_PRODUCT_PATIENT_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__PATIENT_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# PEARL_PRODUCT__PATIENT_RO_AR
resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PEARL_PRODUCT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ENGINEERING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PEARL_PRODUCT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PEARL_PRODUCT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PEARL_PRODUCT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
}

# PEARL_PRODUCT__AGG_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_PEARL_PRODUCT_AGG_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# PEARL_PRODUCT__AGG_RO_AR
resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ENGINEERING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
}

resource "snowflake_grant_account_role" "MARKETING_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_PRODUCT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "MARKETING_FR")
}

# PEARL_ALIGNMENT__PATIENT_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# PEARL_ALIGNMENT__PATIENT_RO_AR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACO_OPS_FR")
}

resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CLINICAL_STRATEGY_FR")
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "FINANCE_FR")
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ENGINEERING_FR")
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_OPS_FR")
}

# PEARL_ALIGNMENT__AGG_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_PEARL_ALIGNMENT_AGG_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# PEARL_ALIGNMENT__AGG_RO_AR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACO_OPS_FR")
}

resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CLINICAL_STRATEGY_FR")
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "FINANCE_FR")
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ENGINEERING_FR")
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_OPS_FR")
}

resource "snowflake_grant_account_role" "GROWTH_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "GROWTH_FR")
}

resource "snowflake_grant_account_role" "GROWTH_ENABLEMENT_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "GROWTH_ENABLEMENT_FR")
}

resource "snowflake_grant_account_role" "MARKETING_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "MARKETING_FR")
}

resource "snowflake_grant_account_role" "CORPORATE_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PEARL_ALIGNMENT__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CORPORATE_FR")
}

# CLAIMS__PATIENT_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_CLAIMS_PATIENT_RW_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__PATIENT_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# CLAIMS__PATIENT_RO_AR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_CLAIMS_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_CLAIMS_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_CLAIMS_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

# CLAIMS__AGG_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_CLAIMS_AGG_RW_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__AGG_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# CLAIMS__AGG_RO_AR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_CLAIMS_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_CLAIMS_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_CLAIMS_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_CLAIMS_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CLAIMS__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
}

# ACTUARIAL_RW_AR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_ACTUARIAL_RW_AR" {
  role_name        = format("%s_%s", var.environment, "ACTUARIAL_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

# ACTUARIAL_RO_AR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = format("%s_%s", var.environment, "ACTUARIAL_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = format("%s_%s", var.environment, "ACTUARIAL_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = format("%s_%s", var.environment, "ACTUARIAL_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = format("%s_%s", var.environment, "ACTUARIAL_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "FINANCE_FR")
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = format("%s_%s", var.environment, "ACTUARIAL_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

# PUBLIC_RW_AR
resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "ENGINEERING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

# PUBLIC_RO_AR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACO_OPS_FR")
}

resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CLINICAL_STRATEGY_FR")
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "FINANCE_FR")
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ENGINEERING_FR")
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_OPS_FR")
}

resource "snowflake_grant_account_role" "GROWTH_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "GROWTH_FR")
}

resource "snowflake_grant_account_role" "GROWTH_ENABLEMENT_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "GROWTH_ENABLEMENT_FR")
}

resource "snowflake_grant_account_role" "MARKETING_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "MARKETING_FR")
}

resource "snowflake_grant_account_role" "CORPORATE_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = format("%s_%s", var.environment, "PUBLIC_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CORPORATE_FR")
}

# CUSTOMER_SUCCESS_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_CUSTOMER_SUCCESS_RW_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# CUSTOMER_SUCCESS_RO_AR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACO_OPS_FR")
}

resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CLINICAL_STRATEGY_FR")
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "FINANCE_FR")
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ENGINEERING_FR")
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_OPS_FR")
}

resource "snowflake_grant_account_role" "GROWTH_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "GROWTH_FR")
}

resource "snowflake_grant_account_role" "GROWTH_ENABLEMENT_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "GROWTH_ENABLEMENT_FR")
}

resource "snowflake_grant_account_role" "MARKETING_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "MARKETING_FR")
}

resource "snowflake_grant_account_role" "CORPORATE_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CORPORATE_FR")
}

# DS_PERFORMANCE_RW_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DS_PERFORMANCE_RW_AR" {
  role_name        = format("%s_%s", var.environment, "DS_PERFORMANCE_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

# DS_PERFORMANCE_RO_AR
resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_DS_PERFORMANCE_RO_AR" {
  role_name        = format("%s_%s", var.environment, "DS_PERFORMANCE_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DS_PERFORMANCE_RO_AR" {
  role_name        = format("%s_%s", var.environment, "DS_PERFORMANCE_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_DS_PERFORMANCE_RO_AR" {
  role_name        = format("%s_%s", var.environment, "DS_PERFORMANCE_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

# DS_PAYMENT_MODELING_RW_AR
resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_DS_PAYMENT_MODELING_RW_AR" {
  role_name        = format("%s_%s", var.environment, "DS_PAYMENT_MODELING_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

# DS_PAYMENT_MODELING_RO_AR
resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_DS_PAYMENT_MODELING_RO_AR" {
  role_name        = format("%s_%s", var.environment, "DS_PAYMENT_MODELING_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DS_PAYMENT_MODELING_RO_AR" {
  role_name        = format("%s_%s", var.environment, "DS_PAYMENT_MODELING_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_DS_PAYMENT_MODELING_RO_AR" {
  role_name        = format("%s_%s", var.environment, "DS_PAYMENT_MODELING_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

# DSA_FEATURE_STORE_PATIENT_RW_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DSA_FEATURE_STORE_PATIENT_RW_AR" {
  role_name        = format("%s_%s", var.environment, "DSA_FEATURE_STORE_PATIENT_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_DSA_FEATURE_STORE_PATIENT_RW_AR" {
  role_name        = format("%s_%s", var.environment, "DSA_FEATURE_STORE_PATIENT_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

# DSA_FEATURE_STORE_PATIENT_RO_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DSA_FEATURE_STORE_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "DSA_FEATURE_STORE_PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_DSA_FEATURE_STORE_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "DSA_FEATURE_STORE_PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

# FINANCIAL_PERFORMANCE__PATIENT_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RW_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__PATIENT_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# FINANCIAL_PERFORMANCE__PATIENT_RO_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__PATIENT_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

# FINANCIAL_PERFORMANCE__AGG_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RW_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RW_AR")
  parent_role_name = format("%s_%s", var.environment, "SERVICE_ACCOUNT_FR")
}

# FINANCIAL_PERFORMANCE__AGG_RO_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PERFORMANCE_FR")
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PAYMENT_MODELING_FR")
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ANALYTICS_FR")
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "ACTUARIAL_FR")
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "FINANCE_FR")
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_FR")
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = format("%s_%s", var.environment, "FINANCIAL_PERFORMANCE__AGG_RO_AR")
  parent_role_name = format("%s_%s", var.environment, "PRODUCT_DESIGN_FR")
}