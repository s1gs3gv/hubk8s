terraform {
  required_version = "1.3.6"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.16.1"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    } 
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

provider "kubectl" {
  # to be configured later for the pipeline
  # host                   = var.cluster_endpoint
  # cluster_ca_certificate = base64decode(var.cluster_ca)
  # token                  = data.cluster_token
  config_path    = "~/.kube/config"
  load_config_file       = true
}
