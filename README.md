# Azure Bicephub

Public IaC repository to deploy secure Azure architectures at scale following best practices.

[![Imagine](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/imagine.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/imagine.yml)
[![Envision](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/envision.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/envision.yml)
[![Inventory](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/inventory.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/inventory.yml)
[![Ether](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/ether.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/ether.yml)
[![Endeavor](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/endeavor.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/endeavor.yml)
[![Skyfort](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/skyfort.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/skyfort.yml)
[![Sight](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/sight.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/sight.yml)
[![Seek](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/seek.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/seek.yml)
[![Matrix](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/matrix.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/matrix.yml)
[![Heal](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/heal.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/heal.yml)
[![Design](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/design.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/design.yml)
[![Reach](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/reach.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/reach.yml)
[![Innermost](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/innermost.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/innermost.yml)
[![Connectivity](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/connectivity.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/connectivity.yml)
[![All Azure Private DNS Zones](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/alz-pdnsz.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/alz-pdnsz.yml)

## Use Cases

### Simultaneously Deploy

- To multiple environments (e.g. dev, qa, uat, staging, prod)
- To multiple regions for BCDR (eastus and westus3 | eastus2, centralus, uksouth and japaneast, etc.)
- One Azure Resource (e.g. 1 Front Door, 1 Internal Load Balancer, 1 Azure Cache for Redis, etc.)
- Multiple Azure Resources of the same type (e.g. 10 Private DNS Zones, 20 App Service Plans, 30 App Services, etc.)
- The Combination of Multiple Azure Services (1 Virtual Wan, 4 Secured Virtual Hubs, 4 Bastions, 1 Key Vault, etc.)
- Available Azure Services
- ![Deployment Examples](./assets/architectures/bicephub/bicephub-instructions.png)

## Reference Architectures

### **Imagine** Architecture [![Imagine](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/imagine.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/imagine.yml)

- Azure Front Door
- Azure App Service Plan
- Azure App Services

![Imagine Architecture](./assets/architectures/imagine/imagine.png)

```bash
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o imagine_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps.json

az deployment sub create \
  --location '<region_name>' \
  --name imagine \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @imagine_parameters.json
```

### _Envision_ Architecture [![Envision](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/envision.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/envision.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
- Azure App Insights
- Azure Log Analytics Workspace

![Envision Architecture](./assets/architectures/envision/envision.png)

```bash
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o envision_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps-appi.json

az deployment sub create \
  --location '<region_name>' \
  --name envision \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @envision_parameters.json
```

### _Inventory_ Architecture [![Inventory](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/inventory.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/inventory.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
- Azure App Insights
- Azure Log Analytics Workspace
- Azure Storage Account

![inventory Architecture](./assets/architectures/inventory/inventory.png)

```bash
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o inventory_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps-appi.json

az deployment sub create \
  --location '<region_name>' \
  --name inventory \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @inventory_parameters.json
```

### _Ether_ Architecture [![Ether](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/ether.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/ether.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
- Azure App Insights
- Azure Log Analytics Workspace
- Azure SQL Server
  - Azure SQL Database

![Ether Architecture](./assets/architectures/ether/ether.png)

```bash
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o ether_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps-appi.json

az deployment sub create \
  --location '<region_name>' \
  --name ether \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @ether_parameters.json
```

### _Endeavor_ Architecture [![Endeavor](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/endeavor.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/endeavor.yml)

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
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o endeavor_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-appsWvintegration-appi.json

az deployment sub create \
  --location '<region_name>' \
  --name endeavor \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @endeavor_parameters.json
```

### _Skyfort_ Architecture [![Skyfort](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/skyfort.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/skyfort.yml)

- Azure Front Door
- Azure App Service Plan
  - Azure App Services
- Azure App Insights
- Azure Log Analytics Workspace
- Azure Key Vault
  - Private Endpoints
- Azure SQL Server
  - Azure SQL Database
    - Private Endpoints
- Azure Virtual Networks
- Azure Network Security Groups
- Azure Private DNS Zones

![Skyfort Architecture](./assets/architectures/skyfort/skyfort.png)

```bash
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o skyfort_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps-appi.json

az deployment sub create \
  --location '<region_name>' \
  --name skyfort \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @skyfort_parameters.json
```

### _Sight_ Architecture [![Sight](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/sight.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/sight.yml)

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

![Sight Architecture](./assets/architectures/sight/sight.png)

```bash
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o sight_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/appsWpeWvintegrationWpdnsz-appi-kvWpdnsz-redisWpdnsz.json

az deployment sub create \
  --location '<region_name>' \
  --name sight \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @sight_parameters.json
```

### _Seek_ Architecture [![Seek](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/seek.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/seek.yml)

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
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o seek_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-appsWpeWvintegrationWpdnsz-appi.json

az deployment sub create \
  --location '<region_name>' \
  --name seek \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @seek_parameters.json
```

### _Matrix_ Architecture [![Matrix](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/matrix.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/matrix.yml)

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
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o matrix_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fd-apps-appi-kv-redis.json

az deployment sub create \
  --location '<region_name>' \
  --name matrix \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @matrix_parameters.json
```

### _Heal_ Architecture [![Heal](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/heal.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/heal.yml)

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
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o heal_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-appsWpeWvintegrationWpdnsz-appi.json

az deployment sub create \
  --location '<region_name>' \
  --name heal \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @heal_parameters.json
```

### _Design_ Architecture [![Design](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/design.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/design.yml)

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
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o design_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-appsWpeWvintegrationWpdnsz-appi-kvWpdnsz.json

az deployment sub create \
  --location '<region_name>' \
  --name design \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @design_parameters.json
```

### _Reach_ Architecture [![Reach](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/reach.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/reach.yml)

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
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o reach_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-appsWpeWvintegrationWpdnsz-appi-kvWpdnsz-redisWpdnsz.json

az deployment sub create \
  --location '<region_name>' \
  --name reach \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @reach_parameters.json
```

### _Innermost_ Architecture [![Innermost](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/innermost.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/innermost.yml)

- Azure Front Door
- Virtual Networks
- Internal Load Balancer

![Innermost Architecture](./assets/architectures/innermost/innermost.jpg)

```bash
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o innermost_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/fdWpl-lbi.json

az deployment sub create \
  --location '<region_name>' \
  --name innermost \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @innermost_parameters.json
```

### _Connectivity_ Architecture [![Connectivity](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/connectivity.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/connectivity.yml)

- Secured Hub and Spoke Extension Pattern Architecture

![connectivity Architecture](./assets/architectures/connectivity/vhub-extention-pattern.png)

```bash
# download the main bicephub template file
curl -o main_bicephub.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/main.bicep

# download or create your own json parameter file
curl -o connectivity_parameters.json https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/parameters/vwan-vhub-vpng-bas-spokes.json

az deployment sub create \
  --location '<region_name>' \
  --name connectivity \
  --subscription '<sub_id>' \
  --template-file main_bicephub.bicep \
  --parameters @connectivity_parameters.json
```

### Deploy All Azure Private DNS Zones

[![All Azure Private DNS Zones](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/alz-pdnsz.yml/badge.svg?branch=main&event=push)](https://github.com/ArtiomLK/azure-bicephub/actions/workflows/alz-pdnsz.yml)

- Deploy all Azure Private DNS Zones

```bash
# download the main bicephub template file
curl -o alz-pdnsz.bicep https://raw.githubusercontent.com/ArtiomLK/azure-bicephub/main/alz-pdnsz.bicep

tags='{"env":"dev", "project":"bicephub", "architecture":"alz-pdnsz"}'; echo $tags

az deployment group create \
  --name 'alz-pdnsz-deployment' \
  --resource-group 'rg-dns' \
  --template-file alz-pdnsz.bicep \
  --parameters vnet_id="/subscriptions/########-####-####-####-############/resourceGroups/<rg-name>/providers/Microsoft.Network/virtualNetworks/<vnet-name>" tags="$tags"
```
