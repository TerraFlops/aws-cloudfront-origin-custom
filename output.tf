locals {
  origin = {
    domain_name = var.domain_name
    path = var.path
    custom_headers = var.custom_headers
    http_port = var.http_port
    https_port = var.https_port
    protocol_policy = var.protocol_policy
    ssl_protocols = var.ssl_protocols
    keepalive_timeout = var.keepalive_timeout
    read_timeout = var.read_timeout
  }
}

output "origin" {
  description = "Custom origin in format suitable for injection in CloudFront distribution module"
  type = object({
    domain_name = string
    path = string
    custom_headers = map(string)
    http_port = number
    https_port = number
    protocol_policy = string
    ssl_protocols = string
    keepalive_timeout = number
    read_timeout = number
  })
  value = local.origin
}