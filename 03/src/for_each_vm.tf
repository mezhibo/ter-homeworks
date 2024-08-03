data "yandex_compute_image" "ubuntu2" {
  family = var.vm_ubuntu_ver
}

resource "yandex_compute_instance" "for_each" {
  depends_on  = [yandex_compute_instance.count]
  for_each    = var.vm_resources
  name        = each.value.vm_name
  platform_id = var.vm_cpu_id
  zone        = var.default_zone
  resources {
    cores     = each.value.cores
    memory    = each.value.memory
  }
  
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu2.image_id
   }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  scheduling_policy {preemptible = true}

  metadata = local.metadata
}

