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

@description('Azure Storage Account parameters')
param st array = []

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

@description('Azure Bastion parameters')
param bas array = []

@description('Spokes parameters')
param spokes array = []
@secure()
param vmAdminName string = ''
@secure()
param vmAdminPass string = ''

@description('SQL Server Names')
param sql array = []
@secure()
param sqlAdminName string = ''
@secure()
param sqlAdminPass string = ''
@description('SQL DB Names')
param sqldb array = []

module architecture 'br:bicephub.azurecr.io/bicep/modules/orchestrator:74942adf5480aab4690650748dc770e9e0d27b7a' = {
  name: take('architecture-${guid(subscription().id, string(rgs))}', 64)
  params: {
    rgs: rgs
    tags: tags

    sql: sql
    sqldb:sqldb
    sqlAdminName: sqlAdminName
    sqlAdminPass: sqlAdminPass

    vnets: vnets
    kvs: kvs
    redis: redis
    st: st
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
    bas: bas

    spokes: spokes
    vmAdminName: vmAdminName
    vmAdminPass: vmAdminPass
  }
}
