terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.4"
    }
  }
}
variable "petname" {
  type        = list(string) 
}
provider "null" "this" {}
component "null" {
  source = "./null"
  providers = {
    random = provider.null.this
  }
}
