class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.28.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.1/tracevault-v0.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "f51949cf8dd3587bce031874595609be62ad28e92f1d257e4bb459257faf6527"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.1/tracevault-v0.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "61f9adeead660197b83db55c27b974d287a846857911548e97060ffe020c7185"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.1/tracevault-v0.28.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6b2f8a58553b9be3e73c6341f182abbc47fbd851ef0d63a351842db83e5db1d"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.1/tracevault-v0.28.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc8c67356b83a441270484b56d4777cfe2ea52a6141ba0aea7458b886f4a7a8e"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
