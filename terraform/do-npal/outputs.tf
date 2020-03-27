
output "iris_ipv4" {
  value = digitalocean_droplet.iris.ipv4_address
}

output "iris_ipv6" {
  value = digitalocean_droplet.iris.ipv6_address
}

output "iris_fipv" {
    value = digitalocean_floating_ip.iris_fip.ip_address
}