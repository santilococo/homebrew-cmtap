class Cbattery < Formula
  desc "Manage battery-related settings on Apple Silicon systems"
  homepage "https://git.slc.ar/slococo/cbattery"
  url "https://git.slc.ar/slococo/cbattery/archive/v1.9.3.tar.gz"
  sha256 "786c538904f4b47fef3e6251dda839a20b4742a1bac57192739b8e1d3c9c6f83"
  license "MIT"

  depends_on arch: :arm64
  depends_on "smc"

  def install
    system "make", "PREFIX=#{prefix}", "install"
    pkgshare.install "#{buildpath}/.visudo"
    inreplace "#{bin}/cbattery", %r{/usr/local/share/cbattery}, opt_pkgshare.to_s
    inreplace "#{bin}/cbattery", /script_dir=.*/, "script_dir=#{opt_bin}"
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
