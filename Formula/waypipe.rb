class Waypipe < Formula
  desc "Network proxy for Wayland clients"
  homepage "https://gitlab.freedesktop.org/mstoeckl/waypipe"
  version "v0.11.2"
  url "https://slc.ar/waypipe-#{version}-linux-x86_64.tar.gz"
  sha256 "335c20aae45ba467b2f62bc764d60dc7fece828b1da3182f13f57d6225cb810e"
  license "MIT"

  depends_on "lz4"
  depends_on "zstd"

  def install
    bin.install "bin/waypipe"
  end
end
