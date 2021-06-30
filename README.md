![inspec-test](https://github.com/devops-adeel/terraform-vault-<BLAH-BLAH>/actions/workflows/terraform-apply.yml/badge.svg)

## Terraform MongoDB Atlas Cluster

This terraform module creates MongoDB Atlas Cluster

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Usage:

```hcl

module "mongodb" {
  source                   = "git::https://github.com/devops-adeel/terraform-mongodb-cluster.git?ref=v0.1.0"
  mongodb_atlas_project_id = var.project_id
  cluster_name             = "application-dev"
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mongodbatlas"></a> [mongodbatlas](#provider\_mongodbatlas) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mongodbatlas_cluster.gcp](https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/cluster) | resource |
| [mongodbatlas_database_user.gcp](https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/database_user) | resource |
| [random_password.default](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_uuid.default](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | MongoDB Cluster Name. | `string` | n/a | yes |
| <a name="input_mongodb_atlas_project_id"></a> [mongodb\_atlas\_project\_id](#input\_mongodb\_atlas\_project\_id) | The ID of the MongoDB Atlas Project. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_username"></a> [username](#output\_username) | MongoDB Username |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
