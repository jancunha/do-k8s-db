resource "digitalocean_database_cluster" "postgres" {
  name                 = var.db_name
  engine               = "pg"
  version              = var.db_version
  size                 = var.db_size
  region               = var.region
  node_count           = 1
  private_network_uuid = digitalocean_vpc.main.id
}