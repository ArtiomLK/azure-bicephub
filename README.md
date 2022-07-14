# Azure Bicephub

Public IaC architectures repository

## Architectures

### Imagine

- Azure Front Door
- Azure App Service Plan
- Azure App Services

```bash
# download bicep template file
curl -o imagine_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/df497b2e63ed1073eb98c597f1c93d496dcbba6b/main.bicep

# download bicep parameters file
curl -o imagine_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-reliability-architecture/ceb8f59db06363a4731ce36323698cecdb6f8c28/architectures/fd-premium-app-w-pe/parameters/fd-plan-app.json

az deployment sub create \
  --location eastus2 \
  --name imagine \
  --subscription '<sub_id>' \
  --template-file imagine_template.bicep \
  --parameters @imagine_parameters.json
```

### Seek

- Azure Front Door
- Azure App Service Plan
- Azure App Services
  - Virtual Network integration
  - Private Endpoints
- Azure Virtual Networks
- Azure Network Security Groups

```bash
# download bicep template file
curl -o seek_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/df497b2e63ed1073eb98c597f1c93d496dcbba6b/main.bicep

# download bicep parameters file
curl -o seek_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-reliability-architecture/ceb8f59db06363a4731ce36323698cecdb6f8c28/architectures/fd-premium-app-w-pe/parameters/fd-plan-appsWpeWvintegration-vnet-pdnsz.json

az deployment sub create \
  --location eastus2 \
  --name seek \
  --subscription '<sub_id>' \
  --template-file seek_template.bicep \
  --parameters @seek_parameters.json
```

### Heal

- Azure Front Door
  - Private Links to Origins
- Azure App Service Plan
  - Azure App Services
  - Virtual Network integration
- Private Endpoints
- Azure Virtual Networks
- Azure Network Security Groups

```bash
# download bicep template file
curl -o heal_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/df497b2e63ed1073eb98c597f1c93d496dcbba6b/main.bicep

# download bicep parameters file
curl -o heal_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-reliability-architecture/ceb8f59db06363a4731ce36323698cecdb6f8c28/architectures/fd-premium-app-w-pe/parameters/fdWpl-plan-appsWpeWvintegration-vnet-pdnsz.json

az deployment sub create \
  --location eastus2 \
  --name heal \
  --subscription '<sub_id>' \
  --template-file heal_template.bicep \
  --parameters @heal_parameters.json
```
