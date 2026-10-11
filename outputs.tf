output "data_safe_sensitive_type_group_grouped_sensitive_types_id" {
  description = "Map of id values across all data_safe_sensitive_type_group_grouped_sensitive_types, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_sensitive_type_group_grouped_sensitive_type.data_safe_sensitive_type_group_grouped_sensitive_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_sensitive_type_group_grouped_sensitive_types_items" {
  description = "Map of items values across all data_safe_sensitive_type_group_grouped_sensitive_types, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types except keys with no items are omitted"
  value       = { for k, v in oci_data_safe_sensitive_type_group_grouped_sensitive_type.data_safe_sensitive_type_group_grouped_sensitive_types : k => v.items if v.items != null && length(v.items) > 0 }
}
output "data_safe_sensitive_type_group_grouped_sensitive_types_patch_operations" {
  description = "Map of patch_operations values across all data_safe_sensitive_type_group_grouped_sensitive_types, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types except keys with no patch_operations are omitted"
  value       = { for k, v in oci_data_safe_sensitive_type_group_grouped_sensitive_type.data_safe_sensitive_type_group_grouped_sensitive_types : k => v.patch_operations if v.patch_operations != null && length(v.patch_operations) > 0 }
}
output "data_safe_sensitive_type_group_grouped_sensitive_types_sensitive_type_group_id" {
  description = "Map of sensitive_type_group_id values across all data_safe_sensitive_type_group_grouped_sensitive_types, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types except keys with no sensitive_type_group_id are omitted"
  value       = { for k, v in oci_data_safe_sensitive_type_group_grouped_sensitive_type.data_safe_sensitive_type_group_grouped_sensitive_types : k => v.sensitive_type_group_id if v.sensitive_type_group_id != null && length(v.sensitive_type_group_id) > 0 }
}

