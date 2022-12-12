module "argo" {
  source                        = "./argo"
  environment                   = var.environment
  namespace                     = var.argo_namespace
  #kubeconfig                    = module.hub-cluster.kubeconfig
  app_controller_replicas       = var.argo_app_controller_replicas
}
