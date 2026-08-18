# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "aft" {
  source                      = "github.com/aws-ia/terraform-aws-control_tower_account_factory?ref=1.13.3"
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = var.ct_home_region
  tf_backend_secondary_region = var.tf_backend_secondary_region
  aft_enable_vpc              = var.aft_enable_vpc

  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_org_name}/fynex-terraform-aft-account-request"
  account_provisioning_customizations_repo_name = "${var.github_org_name}/fynex-terraform-aft-account-provisioning-customizations"
  global_customizations_repo_name               = "${var.github_org_name}/fynex-terraform-aft-global-customizations"
  account_customizations_repo_name              = "${var.github_org_name}/fynex-terraform-aft-account-customizations"
}
