resource "random_string" "resource_group_name" {
  length  = 10
  numeric = false
  special = false
  upper   = false
}

resource "random_string" "rg_acre1" {
  length  = 10
  numeric = false
  special = false
  upper   = false
}

resource "random_string" "rg_acre2" {
  length  = 10
  numeric = false
  special = false
  upper   = false
}

resource "random_string" "storage_account_name" {
  length  = 4
  numeric = false
  special = false
  upper   = false
}

resource "random_string" "storage_container_name" {
  length  = 4
  numeric = false
  special = false
  upper   = false
}

resource "random_string" "acre_group_name" {
  length  = 8
  numeric = false
  special = false
  upper   = false
}
