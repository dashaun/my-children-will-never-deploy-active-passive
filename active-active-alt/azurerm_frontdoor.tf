resource "azurerm_frontdoor" "multi" {
  name                = "kcdc-frontdoor"
  resource_group_name = azurerm_resource_group.resource_group.name

  routing_rule {
    name               = "kcdc"
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
      host_header = "uksouth-uksouth.azuremicroservices.io"
      address     = "uksouth-uksouth.azuremicroservices.io"
      http_port   = 80
      https_port  = 443
    }
    backend {
      host_header = "canadacentral-canadacentral.azuremicroservices.io"
      address     = "canadacentral-canadacentral.azuremicroservices.io"
      http_port   = 80
      https_port  = 443
    }

    load_balancing_name = "exampleLoadBalancingSettings1"
    health_probe_name   = "exampleHealthProbeSetting1"
  }

  frontend_endpoint {
    name      = "exampleFrontendEndpoint1"
    host_name = "kcdc-frontdoor.azurefd.net"
  }

}