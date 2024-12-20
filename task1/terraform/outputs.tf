output "vm_ips" {
  value = libvirt_domain.vm_domain[*].network_interface[0].addresses
}
