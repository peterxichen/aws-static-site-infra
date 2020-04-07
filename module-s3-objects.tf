resource "aws_s3_bucket_object" "main" {
  for_each = fileset("app/", "*")

  bucket = var.bucket_name
  key    = each.value
  source = "app/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/${each.value}")
  content_type = "text/html"
}

resource "aws_s3_bucket_object" "blog" {
  for_each = fileset("app/blog/", "*")

  bucket = var.bucket_name
  key    = "blog/${each.value}"
  source = "app/blog/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/blog/${each.value}")
  content_type = "text/html"
}

resource "aws_s3_bucket_object" "images" {
  for_each = fileset("app/images/", "*")

  bucket = var.bucket_name
  key    = "images/${each.value}"
  source = "app/images/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/images/${each.value}")
}

resource "aws_s3_bucket_object" "assets-webfonts" {
  for_each = fileset("app/assets/webfonts/", "*")

  bucket = var.bucket_name
  key    = "assets/webfonts/${each.value}"
  source = "app/assets/webfonts/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/webfonts/${each.value}")
}

resource "aws_s3_bucket_object" "assets-js" {
  for_each = fileset("app/assets/js/", "*")

  bucket = var.bucket_name
  key    = "assets/js/${each.value}"
  source = "app/assets/js/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/js/${each.value}")
}

resource "aws_s3_bucket_object" "assets-css" {
  for_each = fileset("app/assets/css/", "*")

  bucket = var.bucket_name
  key    = "assets/css/${each.value}"
  source = "app/assets/css/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/css/${each.value}")
  content_type = "text/css"
}

resource "aws_s3_bucket_object" "assets-css-images" {
  for_each = fileset("app/assets/css/images/", "*")

  bucket = var.bucket_name
  key    = "assets/css/images/${each.value}"
  source = "app/assets/css/images/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/css/images/${each.value}")
}

resource "aws_s3_bucket_object" "assets-sass" {
  for_each = fileset("app/assets/sass/", "*")

  bucket = var.bucket_name
  key    = "assets/sass/${each.value}"
  source = "app/assets/sass/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/sass/${each.value}")
}

resource "aws_s3_bucket_object" "assets-sass-base" {
  for_each = fileset("app/assets/sass/base/", "*")

  bucket = var.bucket_name
  key    = "assets/sass/base/${each.value}"
  source = "app/assets/sass/base/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/sass/base/${each.value}")
}

resource "aws_s3_bucket_object" "assets-sass-components" {
  for_each = fileset("app/assets/sass/components/", "*")

  bucket = var.bucket_name
  key    = "assets/sass/components/${each.value}"
  source = "app/assets/sass/components/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/sass/components/${each.value}")
}

resource "aws_s3_bucket_object" "assets-sass-layout" {
  for_each = fileset("app/assets/sass/layout/", "*")

  bucket = var.bucket_name
  key    = "assets/sass/layout/${each.value}"
  source = "app/assets/sass/layout/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/sass/layout/${each.value}")
}

resource "aws_s3_bucket_object" "assets-sass-libs" {
  for_each = fileset("app/assets/sass/libs/", "*")

  bucket = var.bucket_name
  key    = "assets/sass/libs/${each.value}"
  source = "app/assets/sass/libs/${each.value}"
  # etag makes the file update when it changes; see https://stackoverflow.com/questions/56107258/terraform-upload-file-to-s3-on-every-apply
  etag   = filemd5("app/assets/sass/libs/${each.value}")
}