resource "aws_s3_bucket" "bucket" {
  count  = "${lookup(local.create_s3, local.environment)}"
  bucket = "${local.name_prefix}-s3"
  acl    = "private"
  region = "${lookup(local.region, local.environment)}"

  versioning {
    enabled = true
  }
  tags = local.common_tags
}
