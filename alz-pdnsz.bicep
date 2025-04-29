targetScope = 'resourceGroup'
param location string = resourceGroup().location
param tags object = {}

// if you want to deploy all pdnszs, set this to true
param deploy_all_pdnszs bool = false
// List pdnsz if you want to deploy specific pdnsz unless you set deploy_all_pdnszs to true
param pdnszs array = []

@description('Single Virtual Network ID')
param vnet_id string = ''
@description('Multiple Virtual Network IDs')
param vnet_ids array = []

module pdnsz 'br:bicephubdev.azurecr.io/bicep/modules/pdnsz:c039dbf1273c083d5d7b85b1b035c4e88a12f7db' = {
  name: 'pdnsz-deployment'
  params: {
    deploy_all_pdnszs: deploy_all_pdnszs
    vnet_id: vnet_id
    vnet_ids: vnet_ids
    location: location
    tags: tags
    pdnszs: pdnszs
  }
}
