class Cliphist < Formula
  desc "Clipboard history tool"
  homepage "https://github.com/sentriz/cliphist"
  version "0.6.1"
  url "https://github.com/sentriz/cliphist/releases/download/v#{version}/v#{version}-linux-amd64"
  sha256 "cf614f36e4b4d0128544df13d282138d65460a436db6baa750bdcfaa382bcb7d"

  def install
    bin.install "v#{version}-linux-amd64" => "cliphist"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
