variable "environment" {
  type = string
}

variable "raw_db" {
  type = string
}

variable "curated_db" {
  type = string
}

variable "data_science_db" {
  type = string
}

variable "presentation_db" {
  type = string
}
#--------------- Schema name Variables
variable "PEARL_PRODUCT__PATIENT" {
  type = string
}

variable "PEARL_PRODUCT__AGG" {
  type = string
}

variable "PEARL_ALIGNMENT__PATIENT" {
  type = string
}

variable "PEARL_ALIGNMENT__AGG" {
  type = string
}

variable "CLAIMS__PATIENT" {
  type = string
}

variable "CLAIMS__AGG" {
  type = string
}

variable "ACTUARIAL" {
  type = string
}

variable "CUSTOMER_SUCCESS" {
  type = string
}

variable "DS_PERFORMANCE" {
  type = string
}

variable "DS_PAYMENT_MODELING" {
  type = string
}

variable "DSA_FEATURE_STORE_PATIENT" {
  type = string
}

variable "FINANCIAL_PERFORMANCE__PATIENT" {
  type = string
}

variable "FINANCIAL_PERFORMANCE__AGG" {
  type = string
}
