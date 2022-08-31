targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups parameters')
param rgs object

@description('Virtual Networks parameters')
param vnets array = []

@description('Key Vault parameters')
param kvs array = []

@description('Azure Cache for Redis parameters')
param redis array = []

@description('App Service Plans parameters')
param plans array = []

@description('Private DNS Zones parameters')
param pdnszs array = []

@description('Log Analytics Workspaces parameters')
param logs array = []

@description('App Insights parameters')
param appis array = []

@description('App Services parameters')
param apps array = []

@description('Front Door parameters')
param fd object = {}

module architecture 'br:bicephubdev.azurecr.io/bicep/modules/architectures:4d9781ef1718f95c8f315fa428741f286937a067' = {
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
