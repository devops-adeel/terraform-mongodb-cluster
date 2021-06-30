/**
 * Usage:
 *
 * ```hcl
 *
 * module "mongodb" {
 *   source                   = "git::https://github.com/devops-adeel/terraform-mongodb-cluster.git?ref=v0.1.0"
 *   mongodb_atlas_project_id = var.project_id
 *   cluster_name             = "application-dev"
 * }
 * ```
 */


locals {
  project_id = var.mongodb_atlas_project_id
  name       = var.cluster_name
}

resource "mongodbatlas_cluster" "gcp" {
  project_id                  = local.project_id
  name                        = local.name
  provider_name               = "GCP"
  provider_instance_size_name = "M10"
  provider_region_name        = "WESTERN_EUROPE"
}

resource "random_uuid" "default" {}

resource "random_password" "default" {
  length = 16
}

resource "mongodbatlas_database_user" "gcp" {
  username           = format("%s-vault", random_uuid.default.result)
  password           = random_password.default.result
  project_id         = local.project_id
  auth_database_name = "admin"

  roles {
    role_name     = "atlasAdmin"
    database_name = "admin"
  }
}
