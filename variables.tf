variable "data_safe_sensitive_type_group_grouped_sensitive_types" {
  description = <<EOT
Map of data_safe_sensitive_type_group_grouped_sensitive_types, attributes below
Required:
    - sensitive_type_group_id
Optional:
    - patch_operations (block):
        - operation (required)
        - selection (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    sensitive_type_group_id = string
    patch_operations = optional(list(object({
      operation = string
      selection = string
      value     = map(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_safe_sensitive_type_group_grouped_sensitive_types : (
        v.patch_operations == null || alltrue([for item in v.patch_operations : (contains([for v in ["INSERT", "MERGE", "REMOVE"] : lower(v)], lower(item.operation)))])
      )
    ])
    error_message = "must be one of: \"INSERT\", \"MERGE\", \"REMOVE\""
  }
}

