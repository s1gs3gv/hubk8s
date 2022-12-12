variable "environment" {
  type        = string
  description = "name of the target environmnet (e.g. dev, qa, prod)."
}

variable "namespace" {
  type        = string
  description = "argo namespace"
}

variable "kubeconfig" {
  type        = string
  description = "kubeconfig file"
}

variable "app_controller_replicas" {
  type        = any
  description = "argo application controller replicas (scale up for faster deployments)"
}
