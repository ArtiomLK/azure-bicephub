targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups parameters')
param rgs object

@description('Virtual WAN parameters')
param vwan object

@description('Virtual WAN Hubs parameters')
param vhubs array = []

module topology 'br:bicephub.azurecr.io/bicep/modules/topology:9afafee6b5e7f6701d00d275ed6e59e06c9bfa92' = {
  name: take('topology-${guid(subscription().id, string(rgs))}', 64)
  params: {
    rgs: rgs
    vwan: vwan
    vhubs: vhubs
    tags: tags
  }
}
