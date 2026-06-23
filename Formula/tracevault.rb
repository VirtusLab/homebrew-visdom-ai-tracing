class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing"
  version "tracevault-core-v0.15.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing/releases/download/tracevault-core-v0.15.0/tracevault-tracevault-core-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "06a6b83b59636126669a0ca61aca7416db253cf322ffd1e2a6fba0e39ab5059d"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing/releases/download/tracevault-core-v0.15.0/tracevault-tracevault-core-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "b3dad8b8ad72b8f9470559a6c09c2760c5aa3be5c27cde1689db165a1fef0f41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing/releases/download/tracevault-core-v0.15.0/tracevault-tracevault-core-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9e899514915191ca81d048cd691486100a8100e898f55dad51b80165421415e"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing/releases/download/tracevault-core-v0.15.0/tracevault-tracevault-core-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a62059ca23895872a8e35df5a1c632f76dd9f6b7c8bcbad855c619b3e7a29b6b"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
