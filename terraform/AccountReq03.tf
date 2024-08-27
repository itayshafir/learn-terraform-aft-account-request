module "AccountReq03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "itaysh+aft-vended3@amazon.com"
    AccountName               = "AccountReq03"
    ManagedOrganizationalUnit = "Sandbox (ou-hr50-dboal5ct)"
    SSOUserEmail              = "itaysh+ct-demo@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT2"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AW3S Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

account_customizations_name = "sandbox"
}
