class Gitty < Formula
  desc "Friendly git client for the terminal"
  homepage "https://github.com/lettdev/gitty"
  url "https://github.com/lettdev/gitty/releases/download/v0.3.0/gitty-v0.3.0-macos-arm64.tar.gz"
  sha256 "fcbb802c6448fe84751785bf208d22d83ec833696c4203fd96f35a3033f8b515"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "gitty"
    doc.install "README.md", "config.example.toml"
    prefix.install "LICENSE"
  end

  test do
    assert_match "gitty", shell_output("#{bin}/gitty --version")
  end
end
