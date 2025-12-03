deployment "simple" {
  inputs = {
petname = upstream_input.pet_names.simple_pet
aloda = upstream_input.pet_names.k8s_clusters
  }
}
upstream_input "pet_names" {
  type   = "stack"
  source = "app.terraform.io/strampovtest/Application/stacks-test-outputs"
}
