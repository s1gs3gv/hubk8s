module "argo-dev" {
    source = "../../argo"

    environment = "dev"
    namespace = "argo"
    app_controller_replicas = 3
    kubeconfig = file("~/.kube/config")
}