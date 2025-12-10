class RatcrateCli < Formula
  desc "Description of your new tool"
  homepage "https://github.com/rvbug/ratcrate-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.3/ratcrate-cli-macos-aarch64.tar.gz"
      sha256 "f63f493c55c1158954314b91b3af1ba0ce92ea4a8535e011d3ebf96366bb1da8"
    else
      url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.3/ratcrate-cli-macos-x86_64.tar.gz"
      sha256 "4b671961b17c8ae7f2548edd2446244d240895f9fbf800bad058450fe062c41e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.3/ratcrate-cli-linux-aarch64.tar.gz"
      sha256 "522c41c7b175462ede788034e771cb872edb6409b793ca1be08515502011a30b"
    else
      url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.3/ratcrate-cli-linux-x86_64.tar.gz"
      sha256 "fadc5652b74711f7a64033c62d59004ab26bdad2eaa865df7ac9039398dc485d"
    end
  end



  def install
    bin.install "ratcrate-cli"
  end

  test do
    system "#{bin}/ratcrate-cli", "--version"
  end
end


  # on_linux do
  #   url "https://github.com/ratcrate/ratcrate-cli/releases/download/v0.1.3/ratcrate-cli-linux-x86_64.tar.gz"
  #   sha256 "fa5072f36a0daed78a6968377339265e6a0b0945536e9ccfec4ca683c24eeae5"
  # end



