class RatcrateCli < Formula
  desc "Description of your new tool"
  homepage "https://github.com/rvbug/ratcrate-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.1/ratcrate-cli-macos-aarch64.tar.gz"
      sha256 "e0eed32b4c4e1aae14a916d8d2f3423d092b65640ab2a8f61d1954d15cf400c3"
    else
      url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.1/ratcrate-cli-macos-x86_64.tar.gz"
      sha256 "9740646b527f6a5f5d12f663d0a5e2b5261076699d552b24e4d53a3c993f126e"
    end
  end

  on_linux do
    url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.1/ratcrate-cli-linux-x86_64.tar.gz"
    sha256 "fa5072f36a0daed78a6968377339265e6a0b0945536e9ccfec4ca683c24eeae5"
  end

  def install
    bin.install "ratcrate-cli"
  end

  test do
    system "#{bin}/ratcrate-cli", "--version"
  end
end
