resource "aws_route53_zone" "hosted_zone" {
  count    = "${var.create == "hosted_zone" ? 1 : 0}"
  name     = var.hosted_zone
}


resource "aws_route53_record" "record" {
  count    = "${var.create == "domain" ? 1 : 0}"
  zone_id  = var.hosted_zone_id
  name     = var.record_name
  type     = var.record_type
  records  = split("," var.records_to)
  ttl      = var.ttl
}
