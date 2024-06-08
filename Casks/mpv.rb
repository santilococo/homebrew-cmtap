cask "mpv" do
  version "0.38.0"
  sha256 "f6cd654e2b9dc0f327bad8c2976e304d2aa62b8f769841f6115b1ed873442d38"

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
