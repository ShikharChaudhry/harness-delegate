module "delegate" {
  source = "harness/harness-delegate/kubernetes"
  version = "0.1.7"

  account_id = "FLKFO0DFTTqmruPTjwJyaw"
  delegate_token = "ZWE5MjdiODVhMWRiODYxMzhlZjc1OWRiYWQ1ZWU2MTM="
  delegate_name = var.delegate_name
  deploy_mode = "KUBERNETES"
  namespace = var.namespace
  manager_endpoint = "https://app.harness.io/gratis"
  delegate_image = "harness/delegate:23.06.79707"
  replicas = var.replicas
  upgrader_enabled = false
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}