class ratcrate-tui < Formula
  desc "Description of your new tool"
  homepage "https://github.com/rvbug/ratcrate-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvbug/ratcrate-tui/releases/download/v0.1.0/ratcrate-tui-macos-aarch64.tar.gz"
      sha256 "ARM64_SHA256_HERE"
    else
      url "https://github.com/rvbug/ratcrate-tui/releases/download/v0.1.0/ratcrate-tui-macos-x86_64.tar.gz"
      sha256 "X86_64_SHA256_HERE"
    end
  end

  on_linux do
    url "https://github.com/rvbug/ratcrate-tui/releases/download/v0.1.0/ratcrate-tui-linux-x86_64.tar.gz"
    sha256 "LINUX_SHA256_HERE"
  end

  def install
    bin.install "ratcrate-cli"
  end

  test do
    system "#{bin}/ratcrate-cli", "--version"
  end
end
