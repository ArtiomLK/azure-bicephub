targetScope = 'resourceGroup'

@description('Project Name')
param project_n string

@description('Environment Name. dev, qa, uat, stg, prod')
param env string

@description('vWan Location. estus2, eastus, centralus, westus3')
param vwan_location string

@description('Deploy vpng on the vhubs. 4 length bool array. false, false, false, false')
param vpng_enabled array = [false, false, false, false]

@description('Deploy Bastions on each region topology. 4 length bool array. false, false, false, false')
param bas_enabled array = [false, false, false, false]

module architecture 'br:bicephubdev.azurecr.io/bicep/modules/vwan-demo:d21ff5008bb36f061e14d26f55cf35db8d234775' = {
  name: take('architecture-${guid(subscription().id, resourceGroup().id)}', 64)
  params: {
    project_n: project_n
    env: env
    vwan_location: vwan_location
    vpng_enabled: vpng_enabled
    bas_enabled: bas_enabled
  }
}
