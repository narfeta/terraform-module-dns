resource "aws_route53_record" "record" {
  zone_id  = var.hosted_zone_id
  name     = var.record_name
  type     = var.record_type
  records  = split(",", var.record_to)
  ttl      = var.record_ttl
}
