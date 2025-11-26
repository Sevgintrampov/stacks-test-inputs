deployment "simple" {
}
upstream_input "pet_names" {
  type   = "stack"
  source = "app.terraform.io/strampovtest/Application/stacks-test-inputs"
}
