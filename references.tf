module "raw_db" {
  source       = "./DATABASES/RAW_DB"
  environment  = var.environment
}

module "curated_db" {
  source       = "./DATABASES/CURATED_DB"
  environment  = var.environment
}

module "data_science_db" {
  source       = "./DATABASES/DATA_SCIENCE_DB"
  environment  = var.environment
}

module "presentation_db" {
  source       = "./DATABASES/PRESENTATION_DB"
  environment  = var.environment
}

module "curated_schemas" {
  source       = "./DATABASES/CURATED_DB/SCHEMAS"
  environment  = var.environment
  database     = module.curated_db.database
}

module "raw_schemas" {
  source       = "./DATABASES/RAW_DB/SCHEMAS"
  environment  = var.environment
  database     = module.raw_db.database
}

module "data_science_schemas" {
  source       = "./DATABASES/DATA_SCIENCE_DB/SCHEMAS"
  environment  = var.environment
  database     = module.data_science_db.database
}

module "presentation_schemas" {
  source       = "./DATABASES/PRESENTATION_DB/SCHEMAS"
  environment  = var.environment
  database     = module.presentation_db.database
}

module "roles" {
  source       = "./ROLES"
  environment  = var.environment
}

module "warehouses" {
  source      = "./WAREHOUSES"
  environment = var.environment
}

module "grants"{
    source = "./GRANTS"
    depends_on = [
      module.warehouses,
      module.roles,
      module.raw_db,
      module.curated_db,
      module.data_science_db,
      module.presentation_db,
      module.curated_schemas,
      module.raw_schemas,
      module.presentation_schemas,
      module.data_science_schemas
    ]
    environment                    = var.environment
    raw_db                         = module.raw_db.database
    curated_db                     = module.curated_db.database
    data_science_db                = module.data_science_db.database
    presentation_db                = module.presentation_db.database
    #schema names for curated_db
    PEARL_PRODUCT__PATIENT         = module.curated_schemas.PEARL_PRODUCT__PATIENT
    PEARL_PRODUCT__AGG             = module.curated_schemas.PEARL_PRODUCT__AGG
    PEARL_ALIGNMENT__PATIENT       = module.curated_schemas.PEARL_ALIGNMENT__PATIENT
    PEARL_ALIGNMENT__AGG           = module.curated_schemas.PEARL_ALIGNMENT__AGG
    CLAIMS__PATIENT                = module.curated_schemas.CLAIMS__PATIENT
    CLAIMS__AGG                    = module.curated_schemas.CLAIMS__AGG
    ACTUARIAL                      = module.curated_schemas.ACTUARIAL
    CUSTOMER_SUCCESS               = module.curated_schemas.CUSTOMER_SUCCESS
    DS_PERFORMANCE                 = module.curated_schemas.DS_PERFORMANCE
    DS_PAYMENT_MODELING            = module.curated_schemas.DS_PAYMENT_MODELING
    DSA_FEATURE_STORE_PATIENT      = module.curated_schemas.DSA_FEATURE_STORE_PATIENT
    FINANCIAL_PERFORMANCE__PATIENT = module.curated_schemas.FINANCIAL_PERFORMANCE__PATIENT
    FINANCIAL_PERFORMANCE__AGG     = module.curated_schemas.FINANCIAL_PERFORMANCE__AGG
}