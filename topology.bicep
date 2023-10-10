targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups parameters')
param rgs object

@description('Log Analytics Workspaces parameters')
param logs array = []

@description('Virtual WAN parameters')
param vwan object

@description('Virtual WAN Hubs parameters')
param vhubs array = []

@description('Azure Firewalls parameters')
param afws array = []

@description('Azure DNS Private Resolvers parameters')
param dnsprs array = []

@description('Azure Private DNS Zones parameters')
param pdnszs array = []

module topology 'br:bicephub.azurecr.io/bicep/modules/topology:cbf939614770852cbcfd26f79c2771464ae65151' = {
  name: take('topology-${guid(subscription().id, string(rgs))}', 64)
  params: {
    rgs: rgs
    logs: logs
    vwan: vwan
    vhubs: vhubs
    afws: afws
    dnsprs: dnsprs
    pdnszs: pdnszs
    tags: tags
  }
}
