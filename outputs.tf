output "cloudfront_origin_request_policies_id" {
  description = "Map of id values across all cloudfront_origin_request_policies, keyed the same as var.cloudfront_origin_request_policies"
  value       = { for k, v in aws_cloudfront_origin_request_policy.cloudfront_origin_request_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfront_origin_request_policies_arn" {
  description = "Map of arn values across all cloudfront_origin_request_policies, keyed the same as var.cloudfront_origin_request_policies"
  value       = { for k, v in aws_cloudfront_origin_request_policy.cloudfront_origin_request_policies : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudfront_origin_request_policies_comment" {
  description = "Map of comment values across all cloudfront_origin_request_policies, keyed the same as var.cloudfront_origin_request_policies"
  value       = { for k, v in aws_cloudfront_origin_request_policy.cloudfront_origin_request_policies : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "cloudfront_origin_request_policies_cookies_config" {
  description = "Map of cookies_config values across all cloudfront_origin_request_policies, keyed the same as var.cloudfront_origin_request_policies"
  value       = { for k, v in aws_cloudfront_origin_request_policy.cloudfront_origin_request_policies : k => one(v.cookies_config) if v.cookies_config != null && length(v.cookies_config) > 0 }
}
output "cloudfront_origin_request_policies_etag" {
  description = "Map of etag values across all cloudfront_origin_request_policies, keyed the same as var.cloudfront_origin_request_policies"
  value       = { for k, v in aws_cloudfront_origin_request_policy.cloudfront_origin_request_policies : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloudfront_origin_request_policies_headers_config" {
  description = "Map of headers_config values across all cloudfront_origin_request_policies, keyed the same as var.cloudfront_origin_request_policies"
  value       = { for k, v in aws_cloudfront_origin_request_policy.cloudfront_origin_request_policies : k => one(v.headers_config) if v.headers_config != null && length(v.headers_config) > 0 }
}
output "cloudfront_origin_request_policies_name" {
  description = "Map of name values across all cloudfront_origin_request_policies, keyed the same as var.cloudfront_origin_request_policies"
  value       = { for k, v in aws_cloudfront_origin_request_policy.cloudfront_origin_request_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudfront_origin_request_policies_query_strings_config" {
  description = "Map of query_strings_config values across all cloudfront_origin_request_policies, keyed the same as var.cloudfront_origin_request_policies"
  value       = { for k, v in aws_cloudfront_origin_request_policy.cloudfront_origin_request_policies : k => one(v.query_strings_config) if v.query_strings_config != null && length(v.query_strings_config) > 0 }
}

