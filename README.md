# Azure Bicephub

Public IaC architectures repository

## Architectures

### Endeavor

[![Endeavor](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/endeavor.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/endeavor.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
    - Virtual Network integration
- Azure App Insights
  - Azure Log Analytics Workspace
- Azure Virtual Networks
- Azure Network Security Groups

```bash
# download bicep template file
curl -o endeavor_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download bicep parameters file
curl -o endeavor_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-plans-appsWvintegration-vnet.json

az deployment sub create \
  --location eastus2 \
  --name endeavor \
  --subscription '<sub_id>' \
  --template-file endeavor_template.bicep \
  --parameters @endeavor_parameters.json
```

### Envision

[![Envision](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/envision.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/envision.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
- Azure App Insights
  - Azure Log Analytics Workspace
- Azure Virtual Networks
- Azure Network Security Groups

```bash
# download bicep template file
curl -o envision_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download bicep parameters file
curl -o envision_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-plan-app-appi.json

az deployment sub create \
  --location eastus2 \
  --name envision \
  --subscription '<sub_id>' \
  --template-file envision_template.bicep \
  --parameters @envision_parameters.json
```

### Heal

[![Heal](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/heal.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/heal.yml)

- Azure Front Door
  - Private Links to Origins
- Azure App Service Plan
  - Azure App Services
    - Virtual Network integration
    - Private Endpoints
- Azure Virtual Networks
- Azure Network Security Groups
- Azure Private DNS Zones

```bash
# download bicep template file
curl -o heal_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download bicep parameters file
curl -o heal_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-plan-appsWpeWvintegration-vnet-pdnsz.json

az deployment sub create \
  --location eastus2 \
  --name heal \
  --subscription '<sub_id>' \
  --template-file heal_template.bicep \
  --parameters @heal_parameters.json
```

### Design

[![Design](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/design.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/design.yml)

- Azure Front Door
  - Private Links to Origins
- Azure Key Vault
  - Private Endpoints
- Azure App Service Plan
  - Azure App Services
    - Virtual Network integration
    - Private Endpoints
- Azure Virtual Networks
- Azure Network Security Groups
- Azure Private DNS Zones

```bash
# download bicep template file
curl -o design_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download bicep parameters file
curl -o design_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-plan-appsWpeWvintegration-vnet-pdnsz.json

az deployment sub create \
  --location eastus2 \
  --name design \
  --subscription '<sub_id>' \
  --template-file design_template.bicep \
  --parameters @design_parameters.json
```

### Imagine

[![Imagine](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/imagine.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/imagine.yml)

- Azure Front Door
- Azure App Service Plan
- Azure App Services

```bash
# download bicep template file
curl -o imagine_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download bicep parameters file
curl -o imagine_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-plan-app.json

az deployment sub create \
  --location eastus2 \
  --name imagine \
  --subscription '<sub_id>' \
  --template-file imagine_template.bicep \
  --parameters @imagine_parameters.json
```

### Invent

[![Imagine](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/invent.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/invent.yml)

- Azure Front Door
- Azure Key Vault
- Azure App Service Plan
- Azure App Services

```bash
# download bicep template file
curl -o invent_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download bicep parameters file
curl -o invent_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-plan-apps-appi-kv.json

az deployment sub create \
  --location eastus2 \
  --name invent \
  --subscription '<sub_id>' \
  --template-file invent_template.bicep \
  --parameters @invent_parameters.json
```

### Matrix

[![Matrix](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/matrix.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/matrix.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
- Azure App Insights
  - Azure Log Analytics Workspace

```bash
# download bicep template file
curl -o matrix_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download bicep parameters file
curl -o matrix_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-plan-apps-appi.json

az deployment sub create \
  --location eastus2 \
  --name matrix \
  --subscription '<sub_id>' \
  --template-file matrix_template.bicep \
  --parameters @matrix_parameters.json
```

### Seek

[![Seek](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/seek.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/seek.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
    - Virtual Network integration
    - Private Endpoints
- Azure Virtual Networks
- Azure Network Security Groups
- Azure Private DNS Zones

```bash
# download bicep template file
curl -o seek_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download bicep parameters file
curl -o seek_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-plan-appsWpeWvintegration-vnet-pdnsz.json

az deployment sub create \
  --location eastus2 \
  --name seek \
  --subscription '<sub_id>' \
  --template-file seek_template.bicep \
  --parameters @seek_parameters.json
```
