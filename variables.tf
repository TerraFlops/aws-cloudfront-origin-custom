variable "domain_name" {
  description = "The DNS domain name of the custom origin"
  type = string
}

variable "path" {
  description = "An optional element that causes CloudFront to request your content from a directory in your custom origin"
  type = string
  default = ""
}

variable "custom_headers" {
  description = "Optional map of headers that will be sent to the origin"
  type = map(string)
  default = {}
}

variable "http_port" {
  description = "Optional override for HTTP port on the custom origin. Defaults to port 80"
  type = number
  default = 80
}

variable "https_port" {
  description = "Optional override for HTTPS port on the custom origin. Defaults to port 443"
  type = number
  default = 443
}

variable "protocol_policy" {
  description = "The protocol that users can use to access files in the origin"
  type = string
  default = "redirect-to-https"
}

variable "ssl_protocols" {
  description = "Specify the protocols that CloudFront uses to connect to the origin, one of 'http-only', 'match-viewer' or 'https-only'. Defaults to 'https-only'"
  type = string
  default = "https-only"
}

variable "keepalive_timeout" {
  description = "The number of seconds CloudFront will persist its connection to the origin up to a maximum of 60 seconds. Defaults to 5 seconds"
  type = number
  default = 5
}

variable "read_timeout" {
  description = "The number of seconds CloudFront will wait for a response from the origin. The default is 30 seconds"
  type = number
  default = 30
}
