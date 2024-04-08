cask "mpv" do
  version "0.37.0"
  sha256 "74e9bc0ac4d5476ac83c6c516bf000523ae58a688c21ab10f5503692db7ab0bf"

  url "https://github.com/santilococo/cmbuilder/releases/download/mpv-v#{version}/mpv.tar.gz"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://github.com/santilococo/cmbuilder"

  livecheck do
    url :url
    regex(/^mpv[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with formula: "mpv"
  depends_on macos: ">= :mojave"

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
  manpage "mpv.1"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
