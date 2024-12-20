terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_pool" "vm_pool" {
  name = "vm_pool"
  type = "dir"
  path = "/var/lib/libvirt/images/pool"
}

resource "libvirt_volume" "ubuntu_image" {
  count  = var.vm_count
  name   = "ubuntu-volume-${count.index}"
  pool   = libvirt_pool.vm_pool.name
  source = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.img"
  format = "qcow2"
}

resource "libvirt_network" "vm_network" {
  name      = "vm_network"
  mode      = "nat"
  domain    = "local.lan"
  addresses = ["192.168.122.0/24"]
}

resource "libvirt_domain" "vm_domain" {
  count  = var.vm_count
  name   = "vm-${count.index}"
  memory = var.vm_memory
  vcpu   = var.vm_vcpu

  network_interface {
    network_id = libvirt_network.vm_network.id
  }

  disk {
    volume_id = libvirt_volume.ubuntu_image[count.index].id
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }
}
