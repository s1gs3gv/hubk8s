
resource "kubernetes_namespace" "argo_namespace" {
  metadata {
    name = "argo"
  }
}

resource "kubernetes_config_map" "argocd_rbac_cm" {
  depends_on = [kubernetes_namespace.argo_namespace]
    metadata {
    name      = "argocd-rbac-cm"
    namespace = var.namespace

    labels = {
      "app.kubernetes.io/component" = "server"

      "app.kubernetes.io/instance" = "argocd"

      "app.kubernetes.io/name" = "argocd-rbac-cm"

      "app.kubernetes.io/part-of" = "argocd"
    }
  }

  data = {
    "policy.csv" = "g, admin, role:admin\ng, observer, role:readonly\n"
  }
}
