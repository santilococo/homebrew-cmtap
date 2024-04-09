cask "mpv" do
  version "0.37.0"
  sha256 "3ad2dd8f4475e0595ec775c4a872ecf4f8cf076808185ce03c9bf7aff7f750eb"

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
