# class Waypipe < Formula
#   desc "Network proxy for Wayland clients"
#   homepage "https://gitlab.freedesktop.org/mstoeckl/waypipe"
#   version "v0.11.2"
#   url "https://slc.ar/waypipe-#{version}-linux-x86_64.tar.gz"
#   sha256 "335c20aae45ba467b2f62bc764d60dc7fece828b1da3182f13f57d6225cb810e"
#   license "MIT"
# 
#   depends_on "lz4"
#   depends_on "zstd"
# 
#   def install
#     bin.install "bin/waypipe"
#   end
# end

class Waypipe < Formula
  desc "Network proxy for Wayland clients"
  homepage "https://gitlab.freedesktop.org/mstoeckl/waypipe"
  version "0.11.0"
  build "2.fc44"
  arch "x86_64"
  url "https://kojipkgs.fedoraproject.org/packages/waypipe/#{version}/#{build}/#{arch}/waypipe-#{version}-#{build}.#{arch}.rpm"
  sha256 "12de53e513cc7bad4e5533eaa552dd374046488c48f8f577e5f8568b5f735809"
  license "MIT"

  def install
    system "rpm2cpio '#{cached_download}' | cpio -idmv"

    bin.install "usr/bin/waypipe"
  end
end
