resource "azurerm_spring_cloud_builder" "location1" {
  name                    = var.location1
  spring_cloud_service_id = azurerm_spring_cloud_service.location1.id

  build_pack_group {
    name           = "mix"
    build_pack_ids = ["tanzu-buildpacks/java-azure"]
  }

  stack {
    id      = "io.buildpacks.stacks.bionic"
    version = "base"
  }
}

resource "azurerm_spring_cloud_builder" "location2" {
  name                    = var.location2
  spring_cloud_service_id = azurerm_spring_cloud_service.location1.id

  build_pack_group {
    name           = "mix"
    build_pack_ids = ["tanzu-buildpacks/java-azure"]
  }

  stack {
    id      = "io.buildpacks.stacks.bionic"
    version = "base"
  }
}