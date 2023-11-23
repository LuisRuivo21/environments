# Reference to the app module
terraform {
  source = "github.com/LuisRuivo21/modules//app?ref=v1.0.0"
}

# dependency "mysql" {
#   config_path = "../database"
# }

include {
  path = find_in_parent_folders()
}

inputs = {
  environment = "dev"

  # mysql_config = dependency.mysql.outputs
}