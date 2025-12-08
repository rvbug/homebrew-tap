class RatcrateCli < Formula
  desc "Description of your new tool"
  homepage "https://github.com/rvbug/ratcrate-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.0/ratcrate-cli-macos-aarch64.tar.gz"
      sha256 "ad8d8ab7259af436edd7adfe18730dcc69b988de22a6efc4dff65ff14af3f5c2"
    else
      url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.0/ratcrate-cli-macos-x86_64.tar.gz"
      sha256 "449e590c82ba5f2e52c90eadd32ec8235ba112d732a371d809b206696073cc84"
    end
  end

  on_linux do
    url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.0/ratcrate-cli-linux-x86_64.tar.gz"
    sha256 "2677f83dd05abc6978f6bf5e6c70227cf179eac0fbdfda9f63b309bdea88067d"
  end

  def install
    bin.install "ratcrate-cli"
  end

  test do
    system "#{bin}/ratcrate-cli", "--version"
  end
end
