// DNS records for the docs.rs domain.
//
// Note that some of the records are managed by other Terraform resources, and
// thus are missing from this file!

module "docs_rs" {
  source = "./impl"

  domain  = "docs.rs"
  comment = "main domain for docs.rs"
  ttl     = 300

  CAA = {
    "@" = ["0 issuewild \"amazontrust.com\""],
    "@" = ["0 iodef \"mailto:infra@rust-lang.org\""]
  }
}
