#grant ACO_OPS_FR to SYSADMIN
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT" {
  role_name        = snowflake_account_role.ACO_OPS_FR.name
  parent_role_name = "SYSADMIN"
}

#grant CLINICAL_STRATEGY_FR to SYSADMIN
resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT" {
  role_name        = snowflake_account_role.CLINICAL_STRATEGY_FR.name
  parent_role_name = "SYSADMIN"
}

#grant FINANCE_FR to SYSADMIN
resource "snowflake_grant_account_role" "FINANCE_FR_GRANT" {
  role_name        = snowflake_account_role.FINANCE_FR.name
  parent_role_name = "SYSADMIN"
}

#grant ACTUARIAL_FR to SYSADMIN
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT" {
  role_name        = snowflake_account_role.ACTUARIAL_FR.name
  parent_role_name = "SYSADMIN"
}

#grant ENGINEERING_FR to SYSADMIN
resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT" {
  role_name        = snowflake_account_role.ENGINEERING_FR.name
  parent_role_name = "SYSADMIN"
}

#grant PAYMENT_MODELING_FR to SYSADMIN
resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT" {
  role_name        = snowflake_account_role.PAYMENT_MODELING_FR.name
  parent_role_name = "SYSADMIN"
}

#grant PERFORMANCE_FR to SYSADMIN
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT" {
  role_name        = snowflake_account_role.PERFORMANCE_FR.name
  parent_role_name = "SYSADMIN"
}

#grant ANALYTICS_FR to SYSADMIN
resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT" {
  role_name        = snowflake_account_role.ANALYTICS_FR.name
  parent_role_name = "SYSADMIN"
}

#grant PRODUCT_DESIGN_FR to SYSADMIN
resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT" {
  role_name        = snowflake_account_role.PRODUCT_DESIGN_FR.name
  parent_role_name = "SYSADMIN"
}

#grant CUSTOMER_SUCCESS_FR to SYSADMIN
resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
  parent_role_name = "SYSADMIN"
}

#grant PERFORMANCE_OPS_FR to SYSADMIN
resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT" {
  role_name        = snowflake_account_role.PERFORMANCE_OPS_FR.name
  parent_role_name = "SYSADMIN"
}

#grant GROWTH_FR to SYSADMIN
resource "snowflake_grant_account_role" "GROWTH_FR_GRANT" {
  role_name        = snowflake_account_role.GROWTH_FR.name
  parent_role_name = "SYSADMIN"
}

#grant GROWTH_ENABLEMENT_FR to SYSADMIN
resource "snowflake_grant_account_role" "GROWTH_ENABLEMENT_FR_GRANT" {
  role_name        = snowflake_account_role.GROWTH_ENABLEMENT_FR.name
  parent_role_name = "SYSADMIN"
}

#grant MARKETING_FR to SYSADMIN
resource "snowflake_grant_account_role" "MARKETING_FR_GRANT" {
  role_name        = snowflake_account_role.MARKETING_FR.name
  parent_role_name = "SYSADMIN"
}

#grant CORPORATE_FR to SYSADMIN
resource "snowflake_grant_account_role" "CORPORATE_FR_GRANT" {
  role_name        = snowflake_account_role.CORPORATE_FR.name
  parent_role_name = "SYSADMIN"
}

#grant SERVICE_ACCOUNT_FR to SYSADMIN
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT" {
  role_name        = snowflake_account_role.SERVICE_ACCOUNT_FR.name
  parent_role_name = "SYSADMIN"
}

# PEARL_PRODUCT__PATIENT_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_PEARL_PRODUCT_PATIENT_RW_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__PATIENT_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# PEARL_PRODUCT__PATIENT_RO_AR
resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PEARL_PRODUCT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ENGINEERING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PEARL_PRODUCT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PEARL_PRODUCT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PEARL_PRODUCT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PRODUCT_DESIGN_FR.name
}

# PEARL_PRODUCT__AGG_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_PEARL_PRODUCT_AGG_RW_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__AGG_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# PEARL_PRODUCT__AGG_RO_AR
resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ENGINEERING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PRODUCT_DESIGN_FR.name
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
}

resource "snowflake_grant_account_role" "MARKETING_FR_GRANT_PEARL_PRODUCT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_PRODUCT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.MARKETING_FR.name
}

# PEARL_ALIGNMENT__PATIENT_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RW_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# PEARL_ALIGNMENT__PATIENT_RO_AR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ACO_OPS_FR.name
}

resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.CLINICAL_STRATEGY_FR.name
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.FINANCE_FR.name
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ENGINEERING_FR.name
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PRODUCT_DESIGN_FR.name
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT_PEARL_ALIGNMENT_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_OPS_FR.name
}

# PEARL_ALIGNMENT__AGG_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_PEARL_ALIGNMENT_AGG_RW_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# PEARL_ALIGNMENT__AGG_RO_AR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ACO_OPS_FR.name
}

resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.CLINICAL_STRATEGY_FR.name
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.FINANCE_FR.name
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ENGINEERING_FR.name
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PRODUCT_DESIGN_FR.name
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_OPS_FR.name
}

resource "snowflake_grant_account_role" "GROWTH_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.GROWTH_FR.name
}

resource "snowflake_grant_account_role" "GROWTH_ENABLEMENT_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.GROWTH_ENABLEMENT_FR.name
}

resource "snowflake_grant_account_role" "MARKETING_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.MARKETING_FR.name
}

resource "snowflake_grant_account_role" "CORPORATE_FR_GRANT_PEARL_ALIGNMENT_AGG_RO_AR" {
  role_name        = snowflake_account_role.PEARL_ALIGNMENT__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.CORPORATE_FR.name
}

# CLAIMS__PATIENT_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_CLAIMS_PATIENT_RW_AR" {
  role_name        = snowflake_account_role.CLAIMS__PATIENT_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# CLAIMS__PATIENT_RO_AR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_CLAIMS_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.CLAIMS__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_CLAIMS_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.CLAIMS__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_CLAIMS_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.CLAIMS__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

# CLAIMS__AGG_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_CLAIMS_AGG_RW_AR" {
  role_name        = snowflake_account_role.CLAIMS__AGG_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# CLAIMS__AGG_RO_AR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_CLAIMS_AGG_RO_AR" {
  role_name        = snowflake_account_role.CLAIMS__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_CLAIMS_AGG_RO_AR" {
  role_name        = snowflake_account_role.CLAIMS__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_CLAIMS_AGG_RO_AR" {
  role_name        = snowflake_account_role.CLAIMS__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_CLAIMS_AGG_RO_AR" {
  role_name        = snowflake_account_role.CLAIMS__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
}

# ACTUARIAL_RW_AR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_ACTUARIAL_RW_AR" {
  role_name        = snowflake_account_role.ACTUARIAL_RW_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

# ACTUARIAL_RO_AR
resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = snowflake_account_role.ACTUARIAL_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = snowflake_account_role.ACTUARIAL_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = snowflake_account_role.ACTUARIAL_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = snowflake_account_role.ACTUARIAL_RO_AR.name
  parent_role_name = snowflake_account_role.FINANCE_FR.name
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_ACTUARIAL_RO_AR" {
  role_name        = snowflake_account_role.ACTUARIAL_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

# PUBLIC_RW_AR
resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = snowflake_account_role.PUBLIC_RW_AR.name
  parent_role_name = snowflake_account_role.ENGINEERING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = snowflake_account_role.PUBLIC_RW_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = snowflake_account_role.PUBLIC_RW_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = snowflake_account_role.PUBLIC_RW_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_PUBLIC_RW_AR" {
  role_name        = snowflake_account_role.PUBLIC_RW_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

# PUBLIC_RO_AR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.ACO_OPS_FR.name
}

resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.CLINICAL_STRATEGY_FR.name
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.FINANCE_FR.name
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.ENGINEERING_FR.name
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.PRODUCT_DESIGN_FR.name
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_OPS_FR.name
}

resource "snowflake_grant_account_role" "GROWTH_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.GROWTH_FR.name
}

resource "snowflake_grant_account_role" "GROWTH_ENABLEMENT_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.GROWTH_ENABLEMENT_FR.name
}

resource "snowflake_grant_account_role" "MARKETING_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.MARKETING_FR.name
}

resource "snowflake_grant_account_role" "CORPORATE_FR_GRANT_PUBLIC_RO_AR" {
  role_name        = snowflake_account_role.PUBLIC_RO_AR.name
  parent_role_name = snowflake_account_role.CORPORATE_FR.name
}

# CUSTOMER_SUCCESS_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_CUSTOMER_SUCCESS_RW_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# CUSTOMER_SUCCESS_RO_AR
resource "snowflake_grant_account_role" "ACO_OPS_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.ACO_OPS_FR.name
}

resource "snowflake_grant_account_role" "CLINICAL_STRATEGY_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.CLINICAL_STRATEGY_FR.name
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.FINANCE_FR.name
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "ENGINEERING_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.ENGINEERING_FR.name
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.PRODUCT_DESIGN_FR.name
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_OPS_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_OPS_FR.name
}

resource "snowflake_grant_account_role" "GROWTH_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.GROWTH_FR.name
}

resource "snowflake_grant_account_role" "GROWTH_ENABLEMENT_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.GROWTH_ENABLEMENT_FR.name
}

resource "snowflake_grant_account_role" "MARKETING_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.MARKETING_FR.name
}

resource "snowflake_grant_account_role" "CORPORATE_FR_GRANT_CUSTOMER_SUCCESS_RO_AR" {
  role_name        = snowflake_account_role.CUSTOMER_SUCCESS_RO_AR.name
  parent_role_name = snowflake_account_role.CORPORATE_FR.name
}

# DS_PERFORMANCE_RW_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DS_PERFORMANCE_RW_AR" {
  role_name        = snowflake_account_role.DS_PERFORMANCE_RW_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

# DS_PERFORMANCE_RO_AR
resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_DS_PERFORMANCE_RO_AR" {
  role_name        = snowflake_account_role.DS_PERFORMANCE_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DS_PERFORMANCE_RO_AR" {
  role_name        = snowflake_account_role.DS_PERFORMANCE_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_DS_PERFORMANCE_RO_AR" {
  role_name        = snowflake_account_role.DS_PERFORMANCE_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

# DS_PAYMENT_MODELING_RW_AR
resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_DS_PAYMENT_MODELING_RW_AR" {
  role_name        = snowflake_account_role.DS_PAYMENT_MODELING_RW_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

# DS_PAYMENT_MODELING_RO_AR
resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_DS_PAYMENT_MODELING_RO_AR" {
  role_name        = snowflake_account_role.DS_PAYMENT_MODELING_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DS_PAYMENT_MODELING_RO_AR" {
  role_name        = snowflake_account_role.DS_PAYMENT_MODELING_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_DS_PAYMENT_MODELING_RO_AR" {
  role_name        = snowflake_account_role.DS_PAYMENT_MODELING_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

# DSA_FEATURE_STORE_PATIENT_RW_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DSA_FEATURE_STORE_PATIENT_RW_AR" {
  role_name        = snowflake_account_role.DSA_FEATURE_STORE_PATIENT_RW_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_DSA_FEATURE_STORE_PATIENT_RW_AR" {
  role_name        = snowflake_account_role.DSA_FEATURE_STORE_PATIENT_RW_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

# DSA_FEATURE_STORE_PATIENT_RO_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_DSA_FEATURE_STORE_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.DSA_FEATURE_STORE_PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_DSA_FEATURE_STORE_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.DSA_FEATURE_STORE_PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

# FINANCIAL_PERFORMANCE__PATIENT_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RW_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__PATIENT_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# FINANCIAL_PERFORMANCE__PATIENT_RO_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_FINANCIAL_PERFORMANCE_PATIENT_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__PATIENT_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

# FINANCIAL_PERFORMANCE__AGG_RW_AR
resource "snowflake_grant_account_role" "SERVICE_ACCOUNT_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RW_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RW_AR.name
  parent_role_name = snowflake_account_role.SERVICE_ACCOUNT_FR.name
}

# FINANCIAL_PERFORMANCE__AGG_RO_AR
resource "snowflake_grant_account_role" "PERFORMANCE_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PERFORMANCE_FR.name
}

resource "snowflake_grant_account_role" "PAYMENT_MODELING_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PAYMENT_MODELING_FR.name
}

resource "snowflake_grant_account_role" "ANALYTICS_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ANALYTICS_FR.name
}

resource "snowflake_grant_account_role" "ACTUARIAL_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.ACTUARIAL_FR.name
}

resource "snowflake_grant_account_role" "FINANCE_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.FINANCE_FR.name
}

resource "snowflake_grant_account_role" "CUSTOMER_SUCCESS_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.CUSTOMER_SUCCESS_FR.name
}

resource "snowflake_grant_account_role" "PRODUCT_DESIGN_FR_GRANT_FINANCIAL_PERFORMANCE_AGG_RO_AR" {
  role_name        = snowflake_account_role.FINANCIAL_PERFORMANCE__AGG_RO_AR.name
  parent_role_name = snowflake_account_role.PRODUCT_DESIGN_FR.name
}