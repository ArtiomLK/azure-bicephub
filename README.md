# Azure Bicephub

Public IaC architectures repository

## Architectures

![Architectures](./assets/architectures.png)

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

![Endeavor Architecture](./assets/architectures/endeavor/endeavor.png)

```bash
# download bicep template file
curl -o endeavor_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o endeavor_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-appsWvintegration-appi.json

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

![Envision Architecture](./assets/architectures/envision/envision.png)

```bash
# download bicep template file
curl -o envision_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o envision_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps-appi.json

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

![Heal Architecture](./assets/architectures/heal/heal.png)

```bash
# download bicep template file
curl -o heal_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o heal_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-appsWpeWvintegrationWpdnsz-appi.json

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

![Design Architecture](./assets/architectures/design/design.png)

```bash
# download bicep template file
curl -o design_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o design_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-appsWpeWvintegrationWpdnsz-appi-kvWpdnsz.json

az deployment sub create \
  --location eastus2 \
  --name design \
  --subscription '<sub_id>' \
  --template-file design_template.bicep \
  --parameters @design_parameters.json
```

### Reach

[![Reach](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/reach.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/reach.yml)

- Azure Front Door
  - Private Links to Origins
- Azure Key Vault
  - Private Endpoints
- Azure Cache for Redis
  - Private Endpoints
- Azure App Service Plan
  - Azure App Services
    - Virtual Network integration
    - Private Endpoints
- Azure Virtual Networks
- Azure Network Security Groups
- Azure Private DNS Zones

![Reach Architecture](./assets/architectures/reach/reach.png)

```bash
# download bicep template file
curl -o reach_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o reach_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-appsWpeWvintegrationWpdnsz-appi-kvWpdnsz-redisWpdnsz.json

az deployment sub create \
  --location eastus \
  --name reach \
  --subscription '<sub_id>' \
  --template-file reach_template.bicep \
  --parameters @reach_parameters.json
```

### Imagine

[![Imagine](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/imagine.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/imagine.yml)

- Azure Front Door
- Azure App Service Plan
- Azure App Services

![Imagine Architecture](./assets/architectures/imagine/imagine.png)

```bash
# download bicep template file
curl -o imagine_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o imagine_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps.json

az deployment sub create \
  --location eastus2 \
  --name imagine \
  --subscription '<sub_id>' \
  --template-file imagine_template.bicep \
  --parameters @imagine_parameters.json
```

### Matrix

[![Matrix](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/matrix.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/matrix.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
- Azure App Insights
- Azure Log Analytics Workspace
- Azure Key Vault
- Azure Cache for Redis
- Azure Virtual Networks
- Azure Network Security Groups

![Matrix Architecture](./assets/architectures/matrix/matrix.png)

```bash
# download bicep template file
curl -o matrix_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o matrix_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps-appi-kv-redis.json

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
- Azure App Insights
- Azure Log Analytics Workspace
- Azure Virtual Networks
- Azure Network Security Groups
- Azure Private DNS Zones

![Seek Architecture](./assets/architectures/seek/seek.png)

```bash
# download bicep template file
curl -o seek_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o seek_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-appsWpeWvintegrationWpdnsz-appi.json

az deployment sub create \
  --location eastus2 \
  --name seek \
  --subscription '<sub_id>' \
  --template-file seek_template.bicep \
  --parameters @seek_parameters.json
```

### Sight

[![Sight](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/sight.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/sight.yml)

- Azure Key Vault
  - Private Endpoints
- Azure Cache for Redis
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
curl -o sight_template.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download json parameters file
curl -o sight_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/appsWpeWvintegrationWpdnsz-appi-kvWpdnsz-redisWpdnsz.json

az deployment sub create \
  --location northcentralus \
  --name sight \
  --subscription '<sub_id>' \
  --template-file sight_template.bicep \
  --parameters @sight_parameters.json
```

### Azure Landing Zones PDNSZ

[![Azure Landing Zones PDNSZ](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/alz-pdnsz.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/alz-pdnsz.yml)

- Deploy all Azure Private DNS Zones

```bash
# download bicep template file
curl -o alz-pdnsz.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/alz-pdnsz.bicep

tags='{"env":"dev", "project":"bicephub", "architecture":"alz-pdnsz"}'; echo $tags

az deployment group create \
  --name 'alz-pdnsz-deployment' \
  --resource-group 'rg-dns' \
  --template-file alz-pdnsz.bicep \
  --parameters vnet_id="/subscriptions/########-####-####-####-############/resourceGroups/<rg-name>/providers/Microsoft.Network/virtualNetworks/<vnet-name>" tags="$tags"
```
