remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  
  config = {
    bucket         = "luis-cloud-app-terraform-state-backend"
    key            = "environments/dev/${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "dynamodb-terraform-state-lock-table"
  }
}