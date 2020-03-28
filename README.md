# TERRAFORM (AZURE APPLICATION INSIGHTS)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
## Providers

| Name | Version |
|------|---------|
| azurem | latest |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| application\_insights\_name | Name of Azure application insights component | `any` | n/a | yes |
| application\_insights\_type | Type of Azure application insights component | `any` | n/a | yes |
| envirioment | Var used for backend container name key | `any` | n/a | yes |
| resource\_owner | Tag describing the resource owner | `any` | n/a | yes |
| rg\_location | Location of resource group | `string` | `"West Europe"` | no |
| rg\_name | Name of resource group | `any` | n/a | yes |
| tag\_envirioment | Tag describing the environment | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| app\_id | Instrumentation Key for this Application Insights component. |
| id | ID of the Application Insights component. |
| instrumentation\_key | App ID associated with this Application Insights component. |


### Terraform apply

```
terraform plan -var-file="env/dev.tfvars"
```

### Terraform plan
```
terraform apply -var-file="env/dev.tfvars"
```