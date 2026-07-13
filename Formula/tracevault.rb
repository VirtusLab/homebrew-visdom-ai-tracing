class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.23.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.3/tracevault-v0.23.3-aarch64-apple-darwin.tar.gz"
      sha256 "26dfd733af2d505d220027f6157c00ca4641a9d6261d5c6dd47ccd7b6defe496"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.3/tracevault-v0.23.3-x86_64-apple-darwin.tar.gz"
      sha256 "cf92652576160692eff4c52aba332105d1ac6a522f76b0a213c24963930d6f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.3/tracevault-v0.23.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "094058ea5bc02b78218bb42cb5bcfae4707e9a834ce17ecb7faeed153b2a36f8"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.3/tracevault-v0.23.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5c7c840fb7775c26448e42427cc2e2fe6912f3838ea0e5ee10c620bd8f92a6c"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
