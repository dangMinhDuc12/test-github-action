remote_state {
  backend = "s3"
  config = {
    bucket         = "terraform-duc-backend"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "terraform-duc-lock-table"
  }
}

inputs = {
  project = "terragrunt-ec2-project"
}