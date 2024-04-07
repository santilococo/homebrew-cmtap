class Smc < Formula
  desc "System Management Controller (SMC) tool"
  homepage "https://github.com/santilococo/smc"
  url "https://github.com/santilococo/smc/archive/refs/tags/v0.03.tar.gz"
  sha256 "e0c6ba2bdad2d7260a61e8df32bde03f61108a7a7e6e775f053832f5424de8ba"
  license "GPL-2.0"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
