class RatcrateCli < Formula
  desc "Description of your new tool"
  homepage "https://github.com/rvbug/ratcrate-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvbug/ratcrate-cli/releases/download/v0.1.0/ratcrate-cli-macos-aarch64.tar.gz"
      sha256 "ab8a31bd54e4ef742362304ba12cc28a996d9c29c9b6e8012f3e25d0d4ec2c1c"
    else
      url "https://github.com/rvbug/ratcrate-cli/releases/download/v0.1.0/ratcrate-cli-macos-x86_64.tar.gz"
      sha256 "81b5c872f1cb57d8adb7af94c5970f19bc0376c59d17be0a68196d13707b0469"
    end
  end

  on_linux do
    url "https://github.com/rvbug/ratcrate-cli/releases/download/v0.1.0/ratcrate-cli-linux-x86_64.tar.gz"
    sha256 "b1f3eb16bd269b430efde8b6c1d46648bedf813b9cf853e52d932d8271642347"
  end

  def install
    bin.install "ratcrate-cli"
  end

  test do
    system "#{bin}/ratcrate-cli", "--version"
  end
end
