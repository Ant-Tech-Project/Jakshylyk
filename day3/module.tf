module "idc-provider" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git?ref=master"
  bucket = "my-s3-bucket"
  acl    = null

  control_object_ownership = true
  object_ownership         = "ObjectWriter"
  # server_side_encryption_configuration = var.server_side_encryption_configuration
  block_public_acls   = true
  block_public_policy = true
  server_side_encryption_configuration = {
  rule = {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default = {
      sse_algorithm = "AES256"
    }
  }
}
}

#mainge Jaki push kyldy?

