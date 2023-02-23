// DNS records for the rust-lang.org domain.
//
// Note that some of the records are managed by other Terraform resources, and
// thus are missing from this file!

module "rust_lang_org" {
  source = "./impl"

  domain  = "rust-lang.org"
  comment = "main domain for rust-lang.org"
  ttl     = 300

  CAA = {
    "@" = ["0 issuewild \"amazontrust.com\""],
    "@" = ["0 iodef \"mailto:infra@rust-lang.org\""]
  }
}
