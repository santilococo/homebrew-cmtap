class Nvimpager < Formula
  desc "Use nvim as a pager to view manpages, diffs, etc with nvim's syntax highlighting"
  homepage "https://github.com/lucc/nvimpager"
  url "https://github.com/lucc/nvimpager/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "8159324c3ef564a773d279eae5fec1708bf7632dcbe41f6e20509623f830a222"
  license ""

  depends_on "bash"
  depends_on "scdoc" => :build
  depends_on "neovim"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
