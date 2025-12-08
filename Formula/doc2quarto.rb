class Doc2quarto < Formula
  desc "CLI tool to convert Docusaurus markdown to Quarto format"
  homepage "https://github.com/rvbug/doc2quarto"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.2/doc2quarto-macos-aarch64.tar.gz"
      sha256 "e0eed32b4c4e1aae14a916d8d2f3423d092b65640ab2a8f61d1954d15cf400c3"
    else
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.2/doc2quarto-macos-x86_64.tar.gz"
      sha256 "9740646b527f6a5f5d12f663d0a5e2b5261076699d552b24e4d53a3c993f126e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.2/doc2quarto-linux-aarch64.tar.gz"
      sha256 "2f13e85184ba6448d4a505c665ca198d28a68d4f51735836a9b6a878e238fea1"
    else
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.2/doc2quarto-linux-x86_64.tar.gz"
      sha256 "fa5072f36a0daed78a6968377339265e6a0b0945536e9ccfec4ca683c24eeae5"
    end
  end

  def install
    bin.install "doc2quarto"
  end

  test do
    system "#{bin}/doc2quarto", "--version"
  end
end
