resource "oci_data_safe_sensitive_type_group_grouped_sensitive_type" "data_safe_sensitive_type_group_grouped_sensitive_types" {
  for_each = var.data_safe_sensitive_type_group_grouped_sensitive_types

  sensitive_type_group_id = each.value.sensitive_type_group_id

  dynamic "patch_operations" {
    for_each = each.value.patch_operations != null ? each.value.patch_operations : []
    content {
      operation = patch_operations.value.operation
      selection = patch_operations.value.selection
      value     = patch_operations.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

