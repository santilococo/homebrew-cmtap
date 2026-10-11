class Waypipe < Formula
  desc "Network proxy for Wayland clients"
  homepage "https://gitlab.freedesktop.org/mstoeckl/waypipe"
  version "v0.11.2"
  url "https://slc.ar/waypipe-#{version}-linux-x86_64.tar.gz"
  sha256 "2da6a88d7362222e9beee4a6055b7d89d27ab14b16e5a9b0063df6651b7cff55"
  license "MIT"

  depends_on "lz4"
  depends_on "zstd"

  def install
    bin.install "bin/waypipe"
  end
end
