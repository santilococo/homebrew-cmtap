class Cbattery < Formula
  desc "Manage battery-related settings on Apple Silicon systems"
  homepage "https://git.slc.ar/slococo/cbattery"
  url "https://git.slc.ar/slococo/cbattery/archive/v0.8.tar.gz"
  sha256 "f3681dafa8dfef4203615e33f89c57d69c54a5dd37d6c0d50b92be089b909940"
  license "GPL-2.0"

  depends_on arch: :arm64
  depends_on "smc"

  def install
    system "make", "PREFIX=#{prefix}", "install"
    pkgshare.install "#{buildpath}/.visudo"
    inreplace "#{bin}/cbattery", /\.visudo/, "#{opt_pkgshare}/.visudo"
  end

  def caveats
    <<~EOS
      If you want to run the script without entering a password, execute:

        cbattery visudo
    EOS
  end

  test do
    system "false"
  end
end
