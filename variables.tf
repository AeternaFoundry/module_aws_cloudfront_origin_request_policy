variable "cloudfront_origin_request_policies" {
  description = <<EOT
Map of cloudfront_origin_request_policies, attributes below
Required:
    - name
    - cookies_config (block):
        - cookie_behavior (required)
        - cookies (optional, block):
            - items (optional)
    - headers_config (block):
        - header_behavior (optional)
        - headers (optional, block):
            - items (optional)
    - query_strings_config (block):
        - query_string_behavior (required)
        - query_strings (optional, block):
            - items (optional)
Optional:
    - comment
EOT

  type = map(object({
    name    = string
    comment = optional(string)
    cookies_config = object({
      cookie_behavior = string
      cookies = optional(object({
        items = optional(set(string))
      }))
    })
    headers_config = object({
      header_behavior = optional(string)
      headers = optional(object({
        items = optional(set(string))
      }))
    })
    query_strings_config = object({
      query_string_behavior = string
      query_strings = optional(object({
        items = optional(set(string))
      }))
    })
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

