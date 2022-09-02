targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups parameters')
param rgs object

@description('Virtual Networks parameters')
param vnets array = []

@description('Private Domain Name System Zones parameters')
param pdnszs array = []

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

@description('Front Door parameters')
param fd object = {}

module architecture 'br:bicephubdev.azurecr.io/bicep/modules/architectures:d554e1078213dcf2c5c53f09fe878e93aad4ba01' = {
  name: take('architecture-${guid(subscription().id, string(rgs))}', 64)
  params: {
    tags: tags
    rgs: rgs
    vnets: vnets
    kvs: kvs
    redis: redis
    plans: plans
    pdnszs: pdnszs
    logs: logs
    appis: appis
    apps: apps
    fd: fd
  }
}
