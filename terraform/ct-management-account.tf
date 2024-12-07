module "ct_management_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "amargan@gmail.com"
    AccountName               = "Aleks Margan"
    ManagedOrganizationalUnit = "Root"
    SSOUserEmail              = "amargan"
    SSOUserFirstName          = "Aleks"
    SSOUserLastName           = "Margan"
  }

  account_tags = {
    "tagsource" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "aleks"
    change_reason       = "Enroll management account into AFT"
  }

  custom_fields = {
  }

  account_customizations_name = "root-account-customizations"
}
