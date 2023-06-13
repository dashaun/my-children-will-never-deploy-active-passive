resource "azurerm_frontdoor" "default" {
  name                = var.front_door_name
  resource_group_name = azurerm_resource_group.default.name

  routing_rule {
    name               = var.front_door_name
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
    name                = "exampleHealthProbeSetting1"
    path                = "/actuator/health"
    protocol            = "Https"
    interval_in_seconds = 5
  }

  backend_pool {
    name = "exampleBackendBing"
    backend {
      host_header = "${var.location1}-${var.identifier}.azuremicroservices.io"
      address     = "${var.location1}-${var.identifier}.azuremicroservices.io"
      http_port   = 80
      https_port  = 443
    }
    backend {
      host_header = "${var.location2}-${var.identifier}.azuremicroservices.io"
      address     = "${var.location2}-${var.identifier}.azuremicroservices.io"
      http_port   = 80
      https_port  = 443
    }

    load_balancing_name = "exampleLoadBalancingSettings1"
    health_probe_name   = "exampleHealthProbeSetting1"
  }

  frontend_endpoint {
    name      = "exampleFrontendEndpoint1"
    host_name = "${var.front_door_name}.azurefd.net"
  }

  backend_pool_settings {
    backend_pools_send_receive_timeout_seconds   = 0
    enforce_backend_pools_certificate_name_check = false
  }

}