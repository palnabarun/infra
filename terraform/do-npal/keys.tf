resource "digitalocean_ssh_key" "nabarun_pal" {
    name = "nabarun_pal"
    public_key = file("/home/nabarun/.ssh/id_rsa.pub")
}
