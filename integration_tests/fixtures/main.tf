module "default" {
  source                   = "./module"
  mongodb_atlas_project_id = var.project_id
  cluster_name             = "terraform-mongodb-cluster"
}
