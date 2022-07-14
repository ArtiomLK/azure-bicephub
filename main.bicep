targetScope = 'subscription'

@description('Resource tags')
param tags object = {}

@description('Resource Groups Names')
param rgs object

@description('Virtual Networks parameters')
param vnets array = []

@description('App Service Plans Names')
param plans array = []

@description('Private DNS Zones parameters')
param pdnszs array = []

@description('App Services Names')
param apps array = []

@description('Front Door parameters')
param fd object = {}

module architecture 'br:bicephubdev.azurecr.io/bicep/modules/fd-premium-app-w-pe:ceb8f59db06363a4731ce36323698cecdb6f8c28' = {
  name: 'dream-architecture'
  params: {
    tags: tags
    rgs: rgs
    vnets: vnets
    plans: plans
    pdnszs: pdnszs
    apps: apps
    fd: fd
  }
}
