terraform {
  source = "../../../../modules//crates-io"
}

include {
  path           = find_in_parent_folders()
  merge_strategy = "deep"
}

inputs = {
  webapp_domain_name = "staging.crates.io"
  static_domain_name = "static.staging.crates.io"
  index_domain_name  = "index.staging.crates.io"

  static_bucket_name     = "staging-crates-io"
  index_bucket_name      = "staging-crates-io-index"

  static_ttl = 86400 // 1 day

  webapp_origin_domain = "staging-crates-io.herokuapp.com"

  iam_prefix = "staging-crates-io"

  strict_security_headers = true

  static_cloudfront_weight = 50
  static_fastly_weight = 50
}
