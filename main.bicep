targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups parameters')
param rgs object

@description('Virtual Networks parameters')
param vnets array = []

@description('Key Vaults parameters')
param kvs array = []

@description('Azure Cache for Redis parameters')
param redis array = []

@description('Log Analytics Workspaces parameters')
param logs array = []

@description('App Insights parameters')
param appis array = []

@description('App Service Plans parameters')
param plans array = []

@description('App Services parameters')
param apps array = []

@description('Internal Load Balancer parameters')
param lbi array = []

@description('Front Door parameters')
param fd object = {}

@description('Virtual WAN parameters')
param vwan object = {}

@description('Virtual WAN Hubs parameters')
param vhubs array = []

@description('Azure Firewalls parameters')
param afws array = []

@description('Azure DNS Private Resolvers parameters')
param dnsprs array = []

@description('Private Domain Name System Zones parameters')
param pdnszs array = []

@description('All Private Domain Name System Zones parameters')
param allpdnszs array = []

module architecture 'br:bicephub.azurecr.io/bicep/modules/orchestrator:89a2c1a6823732ca370e5b5ac0128416d928c064' = {
  name: take('architecture-${guid(subscription().id, string(rgs))}', 64)
  params: {
    tags: tags
    rgs: rgs
    vnets: vnets
    kvs: kvs
    redis: redis
    plans: plans
    logs: logs
    appis: appis
    apps: apps
    lbi: lbi
    fd: fd

    vwan: vwan
    vhubs: vhubs
    afws: afws
    dnsprs: dnsprs
    pdnszs: pdnszs
    allpdnszs: allpdnszs
  }
}
