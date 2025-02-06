resource "snowflake_warehouse" "BUILD_WH" {
  name           = format("%s_%s", var.environment, "BUILD_WH")
  comment        = "Warehouse dedicated to ACO Operations department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "BUILD_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.BUILD_WH.name
  }
}

resource "snowflake_warehouse" "RAW_WH" {
  name           = format("%s_%s", var.environment, "RAW_WH")
  comment        = "Warehouse dedicated to RAW layer ingestion"
  warehouse_size = "XSMALL"
}

#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "RAW_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.RAW_WH.name
  }
}

resource "snowflake_warehouse" "ACO_OPS_WH" {
  name           = format("%s_%s", var.environment, "ACO_OPS_WH")
  comment        = "Warehouse dedicated to ACO Operations department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "ACO_OPS_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.ACO_OPS_WH.name
  }
}

resource "snowflake_warehouse" "CLINICAL_STRATEGY_WH" {
  name           = format("%s_%s", var.environment, "CLINICAL_STRATEGY_WH")
  comment        = "Warehouse dedicated to Clinical Strategy department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CLINICAL_STRATEGY_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.CLINICAL_STRATEGY_WH.name
  }
}

resource "snowflake_warehouse" "FINANCE_WH" {
  name           = format("%s_%s", var.environment, "FINANCE_WH")
  comment        = "Warehouse dedicated to Finance department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "FINANCE_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.FINANCE_WH.name
  }
}

resource "snowflake_warehouse" "ACTUARIAL_WH" {
  name           = format("%s_%s", var.environment, "ACTUARIAL_WH")
  comment        = "Warehouse dedicated to Actuarial department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "ACTUARIAL_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.ACTUARIAL_WH.name
  }
}

resource "snowflake_warehouse" "ENGINEERING_WH" {
  name           = format("%s_%s", var.environment, "ENGINEERING_WH")
  comment        = "Warehouse dedicated to Engineering department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "ENGINEERING_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.ENGINEERING_WH.name
  }
}

resource "snowflake_warehouse" "PAYMENT_MODELING_WH" {
  name           = format("%s_%s", var.environment, "PAYMENT_MODELING_WH")
  comment        = "Warehouse dedicated to Data Science & Analytics (DSA)'s Payment Modeling department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "PAYMENT_MODELING_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.PAYMENT_MODELING_WH.name
  }
}

resource "snowflake_warehouse" "PERFORMANCE_WH" {
  name           = format("%s_%s", var.environment, "PERFORMANCE_WH")
  comment        = "Warehouse dedicated to Data Science & Analytics (DSA)'s Performance department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "PERFORMANCE_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.PERFORMANCE_WH.name
  }
}

resource "snowflake_warehouse" "ANALYTICS_WH" {
  name           = format("%s_%s", var.environment, "ANALYTICS_WH")
  comment        = "Warehouse dedicated to Data Science & Analytics (DSA)'s Analytics department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "ANALYTICS_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.ANALYTICS_WH.name
  }
}

resource "snowflake_warehouse" "PRODUCT_DESIGN_WH" {
  name           = format("%s_%s", var.environment, "PRODUCT_DESIGN_WH")
  comment        = "Warehouse dedicated to Product and User Experience departments workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "PRODUCT_DESIGN_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.PRODUCT_DESIGN_WH.name
  }
}


resource "snowflake_warehouse" "CUSTOMER_SUCCESS_WH" {
  name           = format("%s_%s", var.environment, "CUSTOMER_SUCCESS_WH")
  comment        = "Warehouse dedicated to Customer Success department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CUSTOMER_SUCCESS_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.CUSTOMER_SUCCESS_WH.name
  }
}

resource "snowflake_warehouse" "PERFORMANCE_OPS_WH" {
  name           = format("%s_%s", var.environment, "PERFORMANCE_OPS_WH")
  comment        = "Warehouse dedicated to Performance Operations department workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "PERFORMANCE_OPS_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.PERFORMANCE_OPS_WH.name
  }
}

resource "snowflake_warehouse" "GROWTH_WH" {
  name           = format("%s_%s", var.environment, "GROWTH_WH")
  comment        = "Warehouse dedicated to Growth department. This group should not be able to view PHI anywhere. workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "GROWTH_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.GROWTH_WH.name
  }
}

resource "snowflake_warehouse" "GROWTH_ENABLEMENT_WH" {
  name           = format("%s_%s", var.environment, "GROWTH_ENABLEMENT_WH")
  comment        = "Warehouse dedicated to Growth Enablement department. This group should not be able to view PHI anywhere. workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "GROWTH_ENABLEMENT_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.GROWTH_ENABLEMENT_WH.name
  }
}

resource "snowflake_warehouse" "MARKETING_WH" {
  name           = format("%s_%s", var.environment, "MARKETING_WH")
  comment        = "Warehouse dedicated to Marketing department. This group should not be able to view PHI anywhere. workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "MARKETING_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.MARKETING_WH.name
  }
}

resource "snowflake_warehouse" "CORPORATE_WH" {
  name           = format("%s_%s", var.environment, "CORPORATE_WH")
  comment        = "Warehouse dedicated to All other Management-level users. This group should not be able to view PHI anywhere. workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "CORPORATE_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.CORPORATE_WH.name
  }
}

resource "snowflake_warehouse" "SERVICE_ACCOUNT_WH" {
  name           = format("%s_%s", var.environment, "SERVICE_ACCOUNT_WH")
  comment        = "Warehouse dedicated to  workload"
  warehouse_size = "XSMALL"
}
#grant ownership to SYSADMIN
resource "snowflake_grant_ownership" "SERVICE_ACCOUNT_WH_OWNERSHIP_GRANT" {
  account_role_name = "SYSADMIN"
  on {
    object_type = "WAREHOUSE"
    object_name = snowflake_warehouse.SERVICE_ACCOUNT_WH.name
  }
}