resource "aws_cloudfront_origin_request_policy" "cloudfront_origin_request_policies" {
  for_each = var.cloudfront_origin_request_policies

  name    = each.value.name
  comment = each.value.comment

  cookies_config {
    cookie_behavior = each.value.cookies_config.cookie_behavior
    dynamic "cookies" {
      for_each = each.value.cookies_config.cookies != null ? [each.value.cookies_config.cookies] : []
      content {
        items = cookies.value.items
      }
    }
  }

  headers_config {
    header_behavior = each.value.headers_config.header_behavior
    dynamic "headers" {
      for_each = each.value.headers_config.headers != null ? [each.value.headers_config.headers] : []
      content {
        items = headers.value.items
      }
    }
  }

  query_strings_config {
    query_string_behavior = each.value.query_strings_config.query_string_behavior
    dynamic "query_strings" {
      for_each = each.value.query_strings_config.query_strings != null ? [each.value.query_strings_config.query_strings] : []
      content {
        items = query_strings.value.items
      }
    }
  }
}

