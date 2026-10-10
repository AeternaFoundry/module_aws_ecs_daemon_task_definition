variable "ecs_daemon_task_definitions" {
  description = <<EOT
Map of ecs_daemon_task_definitions, attributes below
Required:
    - family
Optional:
    - cpu
    - execution_role_arn
    - memory
    - region
    - tags
    - task_role_arn
    - container_definition (block):
        - command (optional)
        - cpu (optional)
        - depends_on (optional, block):
            - condition (required)
            - container_name (required)
        - entry_point (optional)
        - environment (optional, block):
            - name (optional)
            - value (optional)
        - environment_file (optional, block):
            - type (required)
            - value (required)
        - essential (optional)
        - firelens_configuration (optional, block):
            - options (optional)
            - type (required)
        - health_check (optional, block):
            - command (required)
            - interval (optional)
            - retries (optional)
            - start_period (optional)
            - timeout (optional)
        - image (required)
        - interactive (optional)
        - linux_parameters (optional, block):
            - capabilities (optional, block):
                - add (optional)
                - drop (optional)
            - device (optional, block):
                - container_path (optional)
                - host_path (required)
                - permissions (optional)
            - init_process_enabled (optional)
            - tmpfs (optional, block):
                - container_path (required)
                - mount_options (optional)
                - size (required)
        - log_configuration (optional, block):
            - log_driver (required)
            - options (optional)
            - secret_option (optional, block):
                - name (required)
                - value_from (required)
        - memory (optional)
        - memory_reservation (optional)
        - mount_point (optional, block):
            - container_path (optional)
            - read_only (optional)
            - source_volume (optional)
        - name (optional)
        - privileged (optional)
        - pseudo_terminal (optional)
        - readonly_root_filesystem (optional)
        - repository_credentials (optional, block):
            - credentials_parameter (required)
        - restart_policy (optional, block):
            - enabled (required)
            - ignored_exit_codes (optional)
            - restart_attempt_period (optional)
        - secret (optional, block):
            - name (required)
            - value_from (required)
        - start_timeout (optional)
        - stop_timeout (optional)
        - system_control (optional, block):
            - namespace (optional)
            - value (optional)
        - ulimit (optional, block):
            - hard_limit (required)
            - name (required)
            - soft_limit (required)
        - user (optional)
        - working_directory (optional)
    - volume (block):
        - host (optional, block):
            - source_path (optional)
        - name (required)
EOT

  type = map(object({
    family             = string
    cpu                = optional(string)
    execution_role_arn = optional(string)
    memory             = optional(string)
    region             = optional(string)
    tags               = optional(map(string))
    task_role_arn      = optional(string)
    container_definition = optional(list(object({
      command = optional(list(string))
      cpu     = optional(number)
      depends_on = optional(list(object({
        condition      = string
        container_name = string
      })))
      entry_point = optional(list(string))
      environment = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
      environment_file = optional(list(object({
        type  = string
        value = string
      })))
      essential = optional(bool)
      firelens_configuration = optional(list(object({
        options = optional(map(string))
        type    = string
      })))
      health_check = optional(list(object({
        command      = list(string)
        interval     = optional(number)
        retries      = optional(number)
        start_period = optional(number)
        timeout      = optional(number)
      })))
      image       = string
      interactive = optional(bool)
      linux_parameters = optional(list(object({
        capabilities = optional(list(object({
          add  = optional(list(string))
          drop = optional(list(string))
        })))
        device = optional(list(object({
          container_path = optional(string)
          host_path      = string
          permissions    = optional(list(string))
        })))
        init_process_enabled = optional(bool)
        tmpfs = optional(list(object({
          container_path = string
          mount_options  = optional(list(string))
          size           = number
        })))
      })))
      log_configuration = optional(list(object({
        log_driver = string
        options    = optional(map(string))
        secret_option = optional(list(object({
          name       = string
          value_from = string
        })))
      })))
      memory             = optional(number)
      memory_reservation = optional(number)
      mount_point = optional(list(object({
        container_path = optional(string)
        read_only      = optional(bool)
        source_volume  = optional(string)
      })))
      name                     = optional(string)
      privileged               = optional(bool)
      pseudo_terminal          = optional(bool)
      readonly_root_filesystem = optional(bool)
      repository_credentials = optional(list(object({
        credentials_parameter = string
      })))
      restart_policy = optional(list(object({
        enabled                = bool
        ignored_exit_codes     = optional(list(number))
        restart_attempt_period = optional(number)
      })))
      secret = optional(list(object({
        name       = string
        value_from = string
      })))
      start_timeout = optional(number)
      stop_timeout  = optional(number)
      system_control = optional(list(object({
        namespace = optional(string)
        value     = optional(string)
      })))
      ulimit = optional(list(object({
        hard_limit = number
        name       = string
        soft_limit = number
      })))
      user              = optional(string)
      working_directory = optional(string)
    })))
    volume = optional(list(object({
      host = optional(list(object({
        source_path = optional(string)
      })))
      name = string
    })))
  }))
}

