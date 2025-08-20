module "kubernetes" {
  source  = "hcloud-k8s/kubernetes/hcloud"
  version = "2.7.2"

  cluster_name = "k8s"
  hcloud_token = "<hcloud-token>"

  # Export configs for Talos and Kube API access
  cluster_kubeconfig_path  = "kubeconfig"
  cluster_talosconfig_path = "talosconfig"

  # Optional Ingress Controller and Cert Manager
  cert_manager_enabled  = true
  ingress_nginx_enabled = true

  control_plane_nodepools = [
    { name = "control", type = "cpx21", location = "fsn1", count = 3 }
  ]
  worker_nodepools = [
    { name = "worker", type = "cpx11", location = "fsn1", count = 3 }
  ]
}
