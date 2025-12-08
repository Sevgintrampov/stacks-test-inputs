resource "null_resource" "test" {}
variable "aloda" {
  description = "Complex k8s object passed from Stacks"
  type = map(object({
    current_kubernetes_version = map(string)
    id                         = map(string)
  }))
}
