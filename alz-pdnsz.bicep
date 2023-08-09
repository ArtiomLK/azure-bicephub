targetScope = 'resourceGroup'

@description('Resource tags')
param tags object = {}

@description('Virtual Network ID')
param vnet_id string

module pdnsz 'br:bicephub.azurecr.io/bicep/modules/pdnsz:408a3ed81979bd65d6d880e5b4194baa367c940e' = {
  name: 'pdnsz-deployment'
  params: {
    vnet_ids: array(vnet_id)
    tags: tags
  }
}
