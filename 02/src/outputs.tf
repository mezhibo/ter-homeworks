output "VMs_data" {
  value = {
    vm_name1 = yandex_compute_instance.platform.name
    fqdn_name1 = yandex_compute_instance.platform.fqdn
    external_ip1 = yandex_compute_instance.platform.network_interface.0.nat_ip_address
    vm_name2 = yandex_compute_instance.platform2.name
    fqdn_name2 = yandex_compute_instance.platform2.fqdn
    external_ip2 = yandex_compute_instance.platform2.network_interface.0.nat_ip_address
 }
}