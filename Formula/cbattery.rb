class Cbattery < Formula
  desc "Manage battery-related settings on Apple Silicon systems"
  homepage "https://git.slc.ar/slococo/cbattery"
  url "https://git.slc.ar/slococo/cbattery/archive/v1.2.tar.gz"
  sha256 "8691dcb08140ecb8ab4e766d470e09f26f1b26ff79b2ce8929484ba36f516e5b"
  license "GPL-2.0"

  depends_on arch: :arm64
  depends_on "smc"

  def install
    system "make", "PREFIX=#{prefix}", "install"
    pkgshare.install "#{buildpath}/.visudo"
    inreplace "#{bin}/cbattery", /\/usr\/local\/share\/cbattery/, "#{opt_pkgshare}"
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
