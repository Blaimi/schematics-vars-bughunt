variable "resource_group_name" {
  description = "The name of the resource group where the workspace should be placed"
  type        = string
}

variable "workspace_name" {
  description = "The name which will be given to the workspace"
  type        = string
  default     = "schematic-vars-bughunt-managed"
}
