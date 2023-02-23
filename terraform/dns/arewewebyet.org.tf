// DNS records for the areweasyncyet.rs domain.

module "arewewebyet_org" {
  source = "./impl"

  domain  = "arewewebyet.org"
  comment = "domain for rust-lang/arewewebyet"
  ttl     = 300

  CNAME = {
    "www" = ["rust-lang.github.io."],
  }

  CAA = {
    "@" = ["0 iodef \"mailto:infra@rust-lang.org\""]
  }
}
