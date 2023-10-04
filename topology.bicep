targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups parameters')
param rgs object

@description('Virtual WAN parameters')
param vwan object

@description('Virtual WAN Hubs parameters')
param vhubs array = []

module topology 'br:bicephub.azurecr.io/bicep/modules/topology:2a6ffaa21900fc8d67b61e46d078dbda2549bc11' = {
  name: take('topology-${guid(subscription().id, string(rgs))}', 64)
  params: {
    rgs: rgs
    vwan: vwan
    vhubs: vhubs
    tags: tags
  }
}
