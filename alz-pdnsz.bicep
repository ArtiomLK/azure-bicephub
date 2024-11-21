targetScope = 'resourceGroup'

@description('Resource tags')
param tags object = {}

@description('Virtual Network ID')
param vnet_id string

module pdnsz 'br:bicephubdev.azurecr.io/bicep/modules/pdnsz:6a36a07c903dfc24be52d708b276aa2a4d441fbc' = {
  name: 'pdnsz-deployment'
  params: {
    deploy_all_pdnszs: true
    vnet_ids: [
      {
        id: vnet_id
        auto_registration: false
      }
    ]
    location: resourceGroup().location
    tags: tags
  }
}
