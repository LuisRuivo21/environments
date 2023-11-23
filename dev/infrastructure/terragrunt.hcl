# Reference to the app module
terraform {
  source = "github.com/LuisRuivo21/modules//app"
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