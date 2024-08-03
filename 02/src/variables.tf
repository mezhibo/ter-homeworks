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
  description = "VPC network & subnet name"
}



###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "/root/.ssh/id_rsa.pub"
  description = "ssh-keygen -rsa"
}

###vm_web

variable "vm_web_version" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu version"
}

# variable "vm_web_name" {
#   type        = string
#   default     = "netology-develop-platform-web"
#   description = "instance name"
# }

variable "vm_web_cpu_id" {
  type        = string
  default     = "standard-v1"
  description = "cpu id"
}

variable "vm_web_cores" {
  type        = string
  default     = "2"
  description = "numbers of cpu cores"
}

variable "vm_web_memory" {
  type        = string
  default     = "1"
  description = "the amount of RAM"
}

variable "vm_web_core_fraction" {
  type        = string
  default     = "5"
  description = "cpu core fraction"
}

variable "instance" {
  type        = string
  default     = "netology-develop-platform"
  description = "instance name"
}

variable "web" {
  type        = string
  default     = "web"
  description = "vm name"
}

variable "db" {
  type        = string
  default     = "db"
  description = "vm name"
}


variable "vms_resources" {
  type        = map(map(number))
  default     = {
    vm_web_resources = {
      cores          = 2
      memory         = 1
      core_fraction  = 5
    }
    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "metadata" {
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDLxyjLSfW4ug6caUUekByUSo14n7vqMrdDSoRs6l445qqpnPPleXTw0yakNfVttf+zWTH2cVgRF5NfWZtCmkx92ICwLYS6eQAo6z9Kh601ofmjFR8jUoqBKhKbI5ZQfpG7jXj1JhDIHu8YAVd7Vm6L7pSSSMjiMHvdVo6JShnOmz6qXNR7M/NsOb8kJRFZPDFLjR5+Vn/1Yp0VnsBQ8hUts7FZaQFeOy7u0+Xm+Erifik6i9sqJRZM7qGReNEETiah7oMy3nKbzKvWKhb9tLxx2P9LgOZViYPYbhFD+RiRqqj0SuXoP+p1mj0aajYFzYv7aJ+gLXJGC60cswqYou4hYUL6DJhTr6QEsbvYF3uU8sv0i2QMwOLCE5S2XDPi74ybXBDZPQgMYLbNs4KaSmN+L/mhC3/RTl/nc82tYx2oT6i1E2AZLec6owypQ3YpSOTr3Ojo4IpG/9acTO0UUXsobYVyc2JqeoblEDX8pQSFf2n99mmyY1NKvHXpa2Eq6xc= root@DESKTOP-49NVMPO-2024-07-02"
 }
}




