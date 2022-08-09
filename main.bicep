targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups Names')
param rgs object

@description('Virtual Networks parameters')
param vnets array = []

@description('Key Vault Names')
param kvs array = []

@description('App Service Plans Names')
param plans array = []

@description('Private DNS Zones parameters')
param pdnszs array = []

@description('Log Analytics Workspace Names')
param logs array = []

@description('App Insights Names')
param appis array = []

@description('App Services Names')
param apps array = []

@description('Front Door parameters')
param fd object = {}

module architecture 'br:bicephubdev.azurecr.io/bicep/modules/fd-premium-app-w-pe:e7fe4da1e56c4ed5388f495cf26f91c796bf4272' = {
  name: take('dream-architecture-${guid(subscription().id, string(rgs))}', 64)
  params: {
    tags: tags
    rgs: rgs
    vnets: vnets
    kvs: kvs
    plans: plans
    pdnszs: pdnszs
    logs: logs
    appis: appis
    apps: apps
    fd: fd
  }
}
