class Doc2quarto < Formula
  desc "CLI tool to convert Docusaurus markdown to Quarto format"
  homepage "https://github.com/rvbug/doc2quarto"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.1/doc2quarto-macos-aarch64.tar.gz"
      sha256 "065e3f1ee5a9de29b95ff83cfd2426d9c002179f062d450923f1a60f1177ae04"
    else
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.1/doc2quarto-macos-x86_64.tar.gz"
      sha256 "9da8898d7b11e2f2432a6f605e0600636b3b2ea7268a34a63881c66755915038"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.1/doc2quarto-linux-aarch64.tar.gz"
      sha256 "2f13e85184ba6448d4a505c665ca198d28a68d4f51735836a9b6a878e238fea1"
    else
      url "https://github.com/rvbug/doc2quarto/releases/download/v0.1.1/doc2quarto-linux-x86_64.tar.gz"
      sha256 "89b728383bd8bee9f5afc7e0e19e4b6d23440ff0817a95580437436303fad4cd"
    end
  end

  def install
    bin.install "doc2quarto"
  end

  test do
    system "#{bin}/doc2quarto", "--version"
  end
end
