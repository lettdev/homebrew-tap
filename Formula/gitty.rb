class Gitty < Formula
  desc "Friendly git client for the terminal"
  homepage "https://github.com/lettdev/gitty"
  url "https://github.com/lettdev/gitty/releases/download/v0.2.3/gitty-v0.2.3-macos-arm64.tar.gz"
  sha256 "9006ff12cc2109466e955be218438fd83d07a527b21e2fb71a75c3074fbae580"
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
