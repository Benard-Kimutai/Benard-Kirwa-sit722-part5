# Creates a managed Kubernetes cluster on Azure.
resource "azurerm_kubernetes_cluster" "cluster" {
    name                = "part5-aks"                      # Cluster name
    location            = "Australia East"                  # Set location to Australia East
    resource_group_name = "part5"                           
    dns_prefix          = "part5-dev"                      # DNS prefix for the cluster
    kubernetes_version  = "1.30.1"           # Kubernetes version

    default_node_pool {
        name            = "default"                         # Node pool name
        node_count      = 1                                 # Number of nodes in the pool
        vm_size         = "Standard_B2s"                   # Size of the VM
    }

    identity {
        type = "SystemAssigned"                             # Use system-assigned managed identity
    }   
    
}

# Attach the container registry to the AKS cluster.
resource "azurerm_role_assignment" "role_assignment" {
    principal_id                     = azurerm_kubernetes_cluster.cluster.kubelet_identity[0].object_id
    role_definition_name             = "AcrPull"                             # Role for pulling images
    scope                            = azurerm_container_registry.container_registry.id  # Reference to your ACR
    skip_service_principal_aad_check = true
}
