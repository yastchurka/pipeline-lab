provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "kind-lab"
}

module "build_new_namespace" {
  source = "./modules/ns"
  //namespace_name = "hello-from-the-other-side"
    for_each = toset( ["todd", "james", "alice", "dottie", "hello-from-the-other-side"] )
    namespace_name = each.key
}

output "all-ns" {
  value = module.build_new_namespace["alice"].all-ns
}

resource "kubernetes_namespace_v1" "manuel" {
  metadata {
    name = "manual-ns"
  }
}


# output "requested_namespace" {
#   value = module.build_new_namespace.requested_namespace
# }
