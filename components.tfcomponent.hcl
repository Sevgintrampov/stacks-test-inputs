required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.4"
    }
  }
variable "petname" {
  type        = list(string) 
}
variable "aloda" {
type = map(object({
    current_kubernetes_version = map(string)
    id                         = map(string)
  }))
}
output "test" {
value = var.aloda
}
provider "null" "this" {}
component "null" {
  source = "./null"
  providers = {
    null = provider.null.this
  }
}
