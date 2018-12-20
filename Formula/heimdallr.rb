class Heimdallr < Formula
  desc "Finding public ssh keys with ease"
  homepage "https://github.com/AiyionPrime/heimdallr"
  url "https://github.com/AiyionPrime/heimdallr/archive/v1.0.3.tar.gz"
  sha256 "b13798e4e7cae06b93829532d94337487416ec4b7dbf7d79a6bdb1077b8cedbf"
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
