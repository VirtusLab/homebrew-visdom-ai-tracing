class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.28.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.4/tracevault-v0.28.4-aarch64-apple-darwin.tar.gz"
      sha256 "1519d0e023482f3c31d67cb7c657caac2cd68057c7926ecc5b1bfb9a89a3be5a"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.4/tracevault-v0.28.4-x86_64-apple-darwin.tar.gz"
      sha256 "40e0576dd02a9dd30876467ce4b925063dcbdbd8b407414ad68ea9a9cf2c9787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.4/tracevault-v0.28.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa24753dc86400f90ed6ca8ed04d875a76e6654af72bd282817053664f184c92"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.4/tracevault-v0.28.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e913e3ce44bdc62106ea0feb841ba394c78f81de20b75e0d52a71ec0540c047"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
