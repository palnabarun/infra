resource "digitalocean_ssh_key" "nabarun_pal" {
    name = "nabarun_pal"
    public_key = file("../../ansible/authorized_keys/nabarun_id_rsa.pub")
}
