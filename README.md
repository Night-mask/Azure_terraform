# azure_iac_training
# Azure Infrastructure — Terraform

This project provisions core Azure infrastructure using modular Terraform configuration with the [AzureRM provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs) (`~> 4.0`).

## Architecture

The following resources are deployed:

| Module | Description |
|---|---|
| `resource_group` | Azure Resource Group — container for all resources |
| `Vnet` | Virtual Network with address space `10.0.0.0/16` |
| `subnet` | Subnet within the VNet |
| `storage` | Azure Storage Account |
| `nsg` | Network Security Group with configurable security rules |

> **Commented-out modules** — `key_vault`, `postgreysql`, and `aks` are defined but currently disabled. They can be re-enabled by uncommenting and providing the required variables.

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) `>= 1.0`
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) installed and authenticated
- An active Azure subscription

## Getting Started

**1. Authenticate with Azure**

```bash
az login
```

**2. Clone the repo and navigate to the root**

```bash
git clone <your-repo-url>
cd <project-directory>
```

**3. Create a `terraform.tfvars` file** with your values:

```hcl
resource_group_name = "my-resource-group"
location            = "eastus"
v1                  = "my-vnet"
n1                  = "my-subnet"
address_prefixes    = ["10.0.1.0/24"]
store1              = "mystorageaccount"
nsg1                = "my-nsg"
security            = []
```

**4. Initialise, plan, and apply**

```bash
terraform init
terraform plan
terraform apply
```

## Module Structure

```
.
├── main.tf
├── variables.tf
├── terraform.tfvars
└── module/
    ├── resource_group/
    ├── Vnet/
    ├── subnet/
    ├── storage/
    └── nsg/
```

## Input Variables

| Variable | Description |
|---|---|
| `resource_group_name` | Name of the Azure Resource Group |
| `location` | Azure region (e.g. `eastus`, `westeurope`) |
| `v1` | Virtual Network name |
| `n1` | Subnet name |
| `address_prefixes` | List of address prefixes for the subnet |
| `store1` | Storage account name (must be globally unique, lowercase, 3–24 chars) |
| `nsg1` | Network Security Group name |
| `security` | List of NSG security rule objects |

## Optional / Future Modules

The following modules are scaffolded but commented out:

- **`key_vault`** — Azure Key Vault for storing secrets (e.g. database credentials)
- **`postgreysql`** — Azure PostgreSQL server, intended to pull its admin password from Key Vault
- **`aks`** — Azure Kubernetes Service cluster with multiple node pools attached to the subnet

To enable any of these, uncomment the relevant block in `main.tf`, update the module source paths, and add the required variables.

## Teardown

To destroy all provisioned resources:

```bash
terraform destroy
```
