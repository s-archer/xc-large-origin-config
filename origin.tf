resource "volterra_origin_pool" "origin" {
  name                   = var.name
  namespace              = var.namespace
  description            = "Sentence Application Frontend"
  endpoint_selection     = "LOCAL_PREFERRED"
  loadbalancer_algorithm = "LB_OVERRIDE"
  port                   = 80
  no_tls                 = true

  origin_servers {

    k8s_service {
      service_name   = "sentence-frontend.api"
      inside_network = true

      site_locator {

        site {
          namespace = "system"
          name      = "arch-azure-aks-site"
        }
      }
    }
  }
}