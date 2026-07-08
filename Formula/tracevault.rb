class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.23.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.0/tracevault-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "fbcd7bb8f644d0e455260d6148dfa2d61f55217ad1e3c12ae9f2b7ad17b84123"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.0/tracevault-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "347440f71c61ca666bbca00e976e2a2f0b65d57faa06b8a4c53216936a22ae92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.0/tracevault-v0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06645c4f9d555bf5936aa4d9152525a3106cbaad474eca0eacd9f4a303e52d42"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.0/tracevault-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "294983aa3e57f7ca63cf6e2bb8ea123f05b0a01aa8c44ae41520a9b5046cc715"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
