output "ecs_daemon_task_definitions_arn" {
  description = "Map of arn values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ecs_daemon_task_definitions_container_definition" {
  description = "Map of container_definition values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.container_definition if v.container_definition != null && length(v.container_definition) > 0 }
}
output "ecs_daemon_task_definitions_cpu" {
  description = "Map of cpu values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.cpu if v.cpu != null && length(v.cpu) > 0 }
}
output "ecs_daemon_task_definitions_execution_role_arn" {
  description = "Map of execution_role_arn values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.execution_role_arn if v.execution_role_arn != null && length(v.execution_role_arn) > 0 }
}
output "ecs_daemon_task_definitions_family" {
  description = "Map of family values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.family if v.family != null && length(v.family) > 0 }
}
output "ecs_daemon_task_definitions_memory" {
  description = "Map of memory values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.memory if v.memory != null && length(v.memory) > 0 }
}
output "ecs_daemon_task_definitions_region" {
  description = "Map of region values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecs_daemon_task_definitions_revision" {
  description = "Map of revision values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.revision if v.revision != null }
}
output "ecs_daemon_task_definitions_status" {
  description = "Map of status values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.status if v.status != null && length(v.status) > 0 }
}
output "ecs_daemon_task_definitions_tags" {
  description = "Map of tags values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ecs_daemon_task_definitions_tags_all" {
  description = "Map of tags_all values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ecs_daemon_task_definitions_task_role_arn" {
  description = "Map of task_role_arn values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.task_role_arn if v.task_role_arn != null && length(v.task_role_arn) > 0 }
}
output "ecs_daemon_task_definitions_volume" {
  description = "Map of volume values across all ecs_daemon_task_definitions, keyed the same as var.ecs_daemon_task_definitions"
  value       = { for k, v in aws_ecs_daemon_task_definition.ecs_daemon_task_definitions : k => v.volume if v.volume != null && length(v.volume) > 0 }
}

