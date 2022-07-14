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
  --subscription '5f96bde1-56b4-48b1-9ec1-ed3f21a70196' \
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
https://raw.githubusercontent.com/ArtiomLK/azure-reliability-architecture/ceb8f59db06363a4731ce36323698cecdb6f8c28/architectures/fd-premium-app-w-pe/parameters/fd-plan-appsWpeWvintegration-vnet-pdnsz.json
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
https://raw.githubusercontent.com/ArtiomLK/azure-reliability-architecture/ceb8f59db06363a4731ce36323698cecdb6f8c28/architectures/fd-premium-app-w-pe/parameters/fdWpl-plan-appsWpeWvintegration-vnet-pdnsz.json
```
