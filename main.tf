terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  #organization_name = "FPZVNJL"
  #account_name      = "IY13699"
  #authenticator     = "JWT"
  #user              = "tf-snow"
  role              = "TERRAFORM_DEPLOYMENT_FR"
  warehouse         = "TERRAFORM_WH"
}
