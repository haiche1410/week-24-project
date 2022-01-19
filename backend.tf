# --- root/backend.tf ---

terraform {
  backend "s3" {
    bucket = "week-24-project-19012022"
    key    = "remote.tfstate"
    region = "ap-southeast-1"
  }
}