resource "kubernetes_namespace_v1" "example" {
  metadata {
        name = var.namespace_name
  }
}

data "kubernetes_all_namespaces" "allns" {}