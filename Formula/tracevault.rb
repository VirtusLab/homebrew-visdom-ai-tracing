class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.29.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.0/tracevault-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "6beee4006c824226d016efd41790db7a1fc2867567b85dbd71e871f25b540d82"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.0/tracevault-v0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "4f87bf14cb473107c21a47bcb0e156e71bab458d03fec3efa2d2cfd91246425f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.0/tracevault-v0.29.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "26ff49043c04db4b50c3238da6ca3c492e1777cd1341cecf1242d2ab8fb7c91b"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.0/tracevault-v0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "927fba014b28432a6051f18ab785a741c599e19c01c78f683dc3fe639f7d5806"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
