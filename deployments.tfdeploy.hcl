deployment "simple" {
  inputs = {
petname = upstream_input.pet_names.simple_pet
  }
}
upstream_input "pet_names" {
  type   = "stack"
  source = "app.terraform.io/strampovtest/Application/stacks-test-inputs"
}
