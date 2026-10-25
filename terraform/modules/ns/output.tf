output "requested_namespace" {
  value = var.namespace_name
}

output "all-ns" {
  value = data.kubernetes_all_namespaces.allns.namespaces
}