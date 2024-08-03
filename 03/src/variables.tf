###cloud vars
# variable "token" {
#   type        = string
#   description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
# }

variable "cloud_id" {
  type        = string
  default = "b1gvqb4s3f495f55ih0b"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1glq93bir0j2f0sl892"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

### vm_resources

variable "vms_resources" {
  type        = map(map(number))
  default     = {
    vm_count_resources = {
      cores          = 2
      memory         = 1
      core_fraction  = 5
    }
    vm_disks_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 5
    }
  }
}

variable "vm_ubuntu_ver" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu version"
}

variable "vm_cpu_id" {
  type        = string
  default     = "standard-v1"
  description = "cpu id"
  }

  variable "vm_resources" {
  type = map(object({
    vm_name = string
    cores   = number
    memory  = number
    disk    = number
  }))
  default = {
    main    = { vm_name = "main", cores = 2, memory = 2, disk = 5 }
    replica = { vm_name = "replica", cores = 4, memory = 4, disk = 10 }
  }
}