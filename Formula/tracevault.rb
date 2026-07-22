class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.25.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.25.0/tracevault-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b8ea6acab30488bfd7c9e31cd58102cf838483e9204995f44823afdc9b59c00"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.25.0/tracevault-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "64bf17a72e5488856f754eee771d712134bfc1485fc0e0fde18df5ac174ec0a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.25.0/tracevault-v0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e029fac5e3663a4cbb128fe4a08121eb3f9d2fd124afdfd99412499938800747"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.25.0/tracevault-v0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "355f7d3282e9caa5b187ffa54116e74d82baf83b8a31eea9f9f46cabfd93408a"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
