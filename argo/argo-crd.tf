data "kubectl_path_documents" "argo-crd" {
  pattern = "${path.module}/templates/crd/*.yaml"
}

resource "kubectl_manifest" "argo-crd" {
  for_each   = data.kubectl_path_documents.argo-crd.manifests
  yaml_body  = each.value
}
