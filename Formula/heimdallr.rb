class Heimdallr < Formula
  desc "Finding public ssh keys with ease"
  homepage "https://github.com/AiyionPrime/heimdallr"
  url "https://github.com/AiyionPrime/heimdallr/archive/v1.1.tar.gz"
  sha256 "7d9cfb50c84dbc5b4616943ddb3e430a8ad8a1fb5cc109fa37dee556eda0ef37"
  depends_on "json-c"
  depends_on "libssh"
  depends_on "openssl"

  def install
    system "make"
    system "make", "doc"
    man1.install "heimdallr.1.gz"
    bin.install "heimdallr"
  end

  test do
    system "#{bin}/heimdallr", "-u", "aiyionprime"
  end
end
