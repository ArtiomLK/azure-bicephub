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

@description('Azure Firewalls parameters')
param dnsprs array = []

module topology 'br:bicephub.azurecr.io/bicep/modules/topology:02eb8e1d35f60f618b459bdcc02bea273f6ca3b8' = {
  name: take('topology-${guid(subscription().id, string(rgs))}', 64)
  params: {
    rgs: rgs
    vwan: vwan
    vhubs: vhubs
    afws: afws
    dnsprs: dnsprs
    tags: tags
  }
}
