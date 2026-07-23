class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.26.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.26.0/tracevault-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "c0aba8b54fe1866da4114caeb5bae0ee00acded80c5342449ac09eee26819f0f"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.26.0/tracevault-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "ef5bcf42b3f8384bc8f8b8727a87b4d09155275a18814d3e767a69a02a948691"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.26.0/tracevault-v0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "639708447b3022098afc3dea0e8e4bb5c26e397adac2af320d30716446732be8"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.26.0/tracevault-v0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15afa0cf0bdfa8702db69ad812e295b22296208bb857a2c9fa3feb9d2f637234"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
