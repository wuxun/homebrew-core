class Dnsmap < Formula
  desc "Passive DNS network mapper (a.k.a. subdomains bruteforcer)"
  homepage "https://code.google.com/p/dnsmap/"
  url "https://dnsmap.googlecode.com/files/dnsmap-0.30.tar.gz"
  sha256 "fcf03a7b269b51121920ac49f7d450241306cfff23c76f3da94b03792f6becbc"

  bottle do
    cellar :any_skip_relocation
    sha256 "57d5f7ea4a8a73b454bbc60e38fdb9a55e07c2d97f0b5acf38db0408e83b197b" => :el_capitan
    sha256 "6ede00304c268f3a0013f8aa708f5bfc314acbac1db7a3547e8381dc620b18eb" => :yosemite
    sha256 "8ed334077b5c440a7e7015e0b178f0e9500d816d6ee99d00e81a532b8e028e26" => :mavericks
  end

  def install
    system "make", "CC=#{ENV.cc}", "CFLAGS=#{ENV.cflags}", "BINDIR=#{bin}", "install"
  end
end
