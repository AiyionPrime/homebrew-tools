class Heimdallr < Formula
  desc "Finding public ssh keys with ease"
  homepage "https://github.com/AiyionPrime/heimdallr"
  url "https://github.com/AiyionPrime/heimdallr/archive/v1.0.1.tar.gz"
  sha256 "94141b11d3f957189d6c483b92db942b3c7eabc003e8b145c940f032923dd11e"
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
