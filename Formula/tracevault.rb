class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.28.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.2/tracevault-v0.28.2-aarch64-apple-darwin.tar.gz"
      sha256 "0f407e7fdc9ed45508c4c673810a0aee8cbd2eb48fa644f76c2145f178c90c69"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.2/tracevault-v0.28.2-x86_64-apple-darwin.tar.gz"
      sha256 "67ff1f85ba3768235875eb471c0c1b606f61c0f81a6af4f75a40ca8b4d0ea4c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.2/tracevault-v0.28.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc930152a224684afd4b56c7c94556dc7425dad15681a9c65ffa66877dccf938"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.2/tracevault-v0.28.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a97f156f42d9888c522923ad67b316725b1f231af0ef223749be55f6b43ea91"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
