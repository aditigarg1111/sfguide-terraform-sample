# grant USAGE PRIVILEGE on SERVICE_WH to SERVICE_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_SERVICE_WH_TO_SERVICE_FR" {
  account_role_name = snowflake_account_role.SERVICE_FR.name
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = var.service_wh
  }
}

# grant USAGE PRIVILEGE on VISUALIZATION_WH to VISUALIZATION_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_VISUALIZATION_WH_TO_VISUALIZATION_FR" {
  account_role_name = snowflake_account_role.VISUALIZATION_FR.name
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = var.visualization_wh
  }
}

# grant USAGE PRIVILEGE on DATA_ENGINEER_WH to DATA_ENGINEER_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_DATA_ENGINEER_WH_TO_DATA_ENGINEER_FR" {
  account_role_name = snowflake_account_role.DATA_ENGINEER_FR.name
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = var.data_engineer_wh
  }
}

# grant USAGE PRIVILEGE on DATA_SCIENTIST_WH to DATA_SCIENTIST_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_DATA_SCIENTIST_WH_TO_DATA_SCIENTIST_FR" {
  account_role_name = snowflake_account_role.DATA_SCIENTIST_FR.name
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = var.data_scientist_wh
  }
}

# grant USAGE PRIVILEGE on PHI_DATA_WH to PHI_DATA_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_PHI_DATA_WH_TO_PHI_DATA_FR" {
  account_role_name = snowflake_account_role.PHI_DATA_FR.name
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = var.phi_data_wh
  }
}

# grant USAGE PRIVILEGE on CSM_DATA_WH to CSM_DATA_FR
resource "snowflake_grant_privileges_to_account_role" "USAGE_CSM_DATA_WH_TO_CSM_DATA_FR" {
  account_role_name = snowflake_account_role.CSM_DATA_FR.name
  privileges        = ["USAGE"]
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = var.csm_data_wh
  }
}