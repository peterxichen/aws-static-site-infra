resource "aws_s3_bucket" "static_site_logs" {
  bucket = var.bucket_name_logs
  acl    = "log-delivery-write"

  lifecycle_rule {
    id      = "log"
    prefix  = "log/"
    enabled = true

    expiration {
      days = 7
    }
  }

  versioning {
    enabled = false
  }
}

resource "aws_s3_bucket" "static_site" {
  bucket = var.bucket_name

  logging {
    target_bucket = aws_s3_bucket.static_site_logs.bucket
    target_prefix = "log/"
  }

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  versioning {
    enabled = false
  }
}

data "template_file" "example" {
  template = file("bucket_policy.json")

  vars = {
    bucket_name = var.bucket_name
    oai_id      = var.oai_id
  }
}

resource "aws_s3_bucket_policy" "static_site" {
  bucket = var.bucket_name
  policy = data.template_file.example.rendered
}
