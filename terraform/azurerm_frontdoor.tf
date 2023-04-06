resource "azurerm_frontdoor" "default" {
  name                = "devnexus-frontdoor"
  resource_group_name = azurerm_resource_group.default.name

  routing_rule {
    name               = "devnexus"
    accepted_protocols = ["Http", "Https"]
    patterns_to_match  = ["/*"]
    frontend_endpoints = ["exampleFrontendEndpoint1"]
    forwarding_configuration {
      forwarding_protocol = "MatchRequest"
      backend_pool_name   = "exampleBackendBing"
    }
  }

  backend_pool_load_balancing {
    name = "exampleLoadBalancingSettings1"
  }

  backend_pool_health_probe {
    name = "exampleHealthProbeSetting1"
  }

  backend_pool {
    name = "exampleBackendBing"
    backend {
      host_header = "centralus-bootiful.azuremicroservices.io"
      address     = "centralus-bootiful.azuremicroservices.io"
      http_port   = 80
      https_port  = 443
    }
    backend {
      host_header = "southcentralus-bootiful.azuremicroservices.io"
      address     = "southcentralus-bootiful.azuremicroservices.io"
      http_port   = 80
      https_port  = 443
    }

    load_balancing_name = "exampleLoadBalancingSettings1"
    health_probe_name   = "exampleHealthProbeSetting1"
  }

  frontend_endpoint {
    name      = "exampleFrontendEndpoint1"
    host_name = "devnexus-frontdoor.azurefd.net"
  }

  backend_pool_settings {
    backend_pools_send_receive_timeout_seconds   = 0
    enforce_backend_pools_certificate_name_check = false
  }


}