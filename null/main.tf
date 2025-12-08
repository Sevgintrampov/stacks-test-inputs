resource "null_resource" "validation" {
  # We iterate over the map so we create one resource per cluster key (e.g., "cluster-01")
  for_each = var.aloda

  triggers = {
    # 1. Access the ID (Deep nested map lookup)
    # This grabs "cluster-01" -> id -> "1"
    cluster_id = each.value.id["1"]

    # 2. Access the Version
    # This grabs "cluster-01" -> current_kubernetes_version -> "1"
    k8s_version = each.value.current_kubernetes_version["1"]
    
    # 3. access the top level key (e.g. "cluster-01")
    cluster_name = each.key
  }
}
variable "aloda" {
  description = "Complex k8s object passed from Stacks"
  type = map(object({
    current_kubernetes_version = map(string)
    id                         = map(string)
  }))
}
