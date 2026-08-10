class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.27.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.27.0/tracevault-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "8df73a21fc9be6e23458ad30e81954af3f4e8e19b6afc186478d33e3cfc80163"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.27.0/tracevault-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "d0c959460e94de0c1756fd48761cb7e19f21311a4d07915093c6c5bbee5e69ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.27.0/tracevault-v0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "499d69c79c0a8cc875ef87ae61fac2d43656a78f2619f6ae97c5f33381b6d84e"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.27.0/tracevault-v0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b917b0b08b3d9eced55cf0beb1732d2f619bf539f6bb9fa329c29174dee893f"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
