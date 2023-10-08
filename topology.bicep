targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups parameters')
param rgs object

@description('Virtual WAN parameters')
param vwan object

@description('Virtual WAN Hubs parameters')
param vhubs array = []

@description('Azure Firewalls parameters')
param afws array = []

module topology 'br:bicephub.azurecr.io/bicep/modules/topology:36f873c20b200ba1cb85acb3330c23b4ec192eee' = {
  name: take('topology-${guid(subscription().id, string(rgs))}', 64)
  params: {
    rgs: rgs
    vwan: vwan
    vhubs: vhubs
    afws: afws
    tags: tags
  }
}
