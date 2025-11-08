class Doc2quarto < Formula
  desc "CLI tool to convert Docusaurus markdown to Quarto format"
  homepage "https://github.com/rvbug/doc2quarto"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.1/doc2quarto-macos-aarch64.tar.gz"
      sha256 "8825292d6417d93ae6373a1135f67e8bd08807ea1c60960fd679ab091372af8f"
    else
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.1/doc2quarto-macos-x86_64.tar.gz"
      sha256 "20f4c4f3e7a1d57e7cbe66283ce7e0312a1cec1e8806a2db759b339d667e603b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.1/doc2quarto-linux-aarch64.tar.gz"
      sha256 "225d7e256e8dbd3d2a7aa7ae07e218736a75a4f41d364557a033dab6231acce4"
    else
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.1/doc2quarto-linux-x86_64.tar.gz"
      sha256 "91e02ecc2c52b15aa8e7afa7a1197f793e48c2e4939762b9ed0c3930e8d715f1"
    end
  end

  def install
    bin.install "doc2quarto"
  end

  test do
    system "#{bin}/doc2quarto", "--version"
  end
end
