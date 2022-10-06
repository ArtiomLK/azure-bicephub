targetScope = 'resourceGroup'

@description('Resource tags')
param tags object = {}

@description('Virtual Networks ID')
param vnet_id string

module pdnsz 'br:bicephubdev.azurecr.io/bicep/modules/pdnsz:0dd09d7ef416f3d4db1839b904b3ad63eae84a8f' = {
  name: 'pdnsz-deployment'
  params: {
    vnet_id: vnet_id
    tags: tags
  }
}
