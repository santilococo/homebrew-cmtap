cask "mpv" do
  version "0.37.0"
  sha256 "36cfa8dc112d58410e9b4296b038889e1d9154b6b97eb4a62efef7ca1d35e406"

  url "https://github.com/santilococo/cmbuilder/releases/download/mpv-v#{version}/mpv.dmg"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://github.com/santilococo/cmbuilder"

  conflicts_with formula: "mpv"
  depends_on macos: ">= :mojave"

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
  manpage "documentation/man/mpv.1"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
