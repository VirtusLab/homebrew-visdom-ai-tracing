class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.23.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.2/tracevault-v0.23.2-aarch64-apple-darwin.tar.gz"
      sha256 "29a2b1806fe85e6a5a9009d48cdf89199f953bcdf8c65d21c5b1a67d4f0a3a0b"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.2/tracevault-v0.23.2-x86_64-apple-darwin.tar.gz"
      sha256 "eba028cc9e3753f8b620daacf58e13b4d095d43f37714136ed16881905f9688a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.2/tracevault-v0.23.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e692079be31a13469c333fca18f4907bc924b4a09e411e453f5a0cf0578d3953"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.2/tracevault-v0.23.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "144ad1e1eb3bd77d8fe36c91527134ddcf829eef8d85253e029d543e98b97273"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
