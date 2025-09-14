variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "lab-vpc"
}

variable "vpc_range" {
  description = "VPC IP range"
  type        = string
  default     = "10.10.10.0/24"
}

variable "name" {
  description = "Cluster name"
  type        = string
  default     = "lab-k8s"
}

variable "region" {
  description = "Region name"
  type        = string
  default     = "nyc3"
}

variable "ver" {
  description = "Cluster version"
  type        = string
  default     = "1.33.1-do.3"
}

variable "node_name" {
  description = "Node name"
  type        = string
  default     = "lab-node"
}

variable "node_size" {
  description = "Node machine size"
  type        = string
  default     = "s-2vcpu-2gb"
}

variable "node_count" {
  description = "Number of nodes"
  type        = number
  default     = 3
}

variable "db_name" {
  description = "Database cluster name"
  type        = string
  default     = "db-postgresql-nyc2-1"
}

variable "db_size" {
  description = "Database machine size"
  type        = string
  default     = "db-s-1vcpu-1gb"
}

variable "db_version" {
  description = "Database version"
  type        = string
  default     = "15"
}