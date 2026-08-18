# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "ct_management_account_id" {
  description = "The ID of the Control Tower management account"
  type        = string
}

variable "log_archive_account_id" {
  description = "The ID of the log archive account"
  type        = string
}

variable "audit_account_id" {
  description = "The ID of the audit account"
  type        = string
}

variable "aft_management_account_id" {
  description = "The ID of the AFT management account"
  type        = string
}

variable "github_org_name" {
  description = "The name of the GitHub organization"
  type        = string
}

variable "ct_home_region" {
  description = "The home region for CloudTrail"
  type        = string
}

variable "tf_backend_secondary_region" {
  description = "The secondary region for Terraform backend"
  type        = string
}

variable "aft_enable_vpc" {
  description = "Flag to enable VPC for AFT"
  type        = bool
}