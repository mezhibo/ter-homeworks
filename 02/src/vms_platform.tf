variable "default_zone_db" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr_db" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

# variable "vm_db_name" {
#   type        = string
#   default     = "netology-develop-platform-db"
#   description = "instance name"
# }

variable "vm_db_cores" {
  type        = string
  default     = "2"
  description = "numbers of cpu cores"
}

variable "vm_db_memory" {
  type        = string
  default     = "2"
  description = "the amount of RAM"
}

variable "vm_db_core_fraction" {
  type        = string
  default     = "20"
  description = "cpu core fraction"
}

variable "vpc_name_db" {
  type        = string
  default     = "develop_db"
  description = "VPC network & subnet name"
}

variable "vm_db_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM image"
}

variable "vm_db_platform" {
  type        = string
  default     = "standard-v3"
  description = "Platform"
}
