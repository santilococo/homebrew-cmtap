class Cliphist < Formula
  desc "Clipboard history tool"
  homepage "https://github.com/sentriz/cliphist"
  version "0.7.0"
  url "https://github.com/sentriz/cliphist/releases/download/v#{version}/v#{version}-linux-amd64"
  sha256 "d21ca6846bd25f7bd2dabb157912e2e07226db76be32885bc53d7f27db98d08a"

  def install
    bin.install "v#{version}-linux-amd64" => "cliphist"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
