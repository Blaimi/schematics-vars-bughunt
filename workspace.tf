resource "ibm_schematics_workspace" "workspace" {
  name = var.workspace_name
  description = "managed workspace for hunting IBM Cloud Schematics bugs"
  template_type = "terraform_v1.5"
  resource_group = data.ibm_resource_group.resource_group.name
  template_git_url = "https://github.com/Blaimi/schematics-vars-bughunt.git"
  template_git_branch = "main"
  template_git_folder = "."
  location = local.ibm_region

  template_inputs {
    name  = "resource_group"
    type  = "string"
    value = var.resource_group_name
  }
}
