class Smc < Formula
  desc "smc tool"
  homepage "https://github.com/santilococo/smc"
  url "https://github.com/santilococo/smc/archive/refs/tags/v0.03.tar.gz"
  sha256 ""
  license "GPL-2.0"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
