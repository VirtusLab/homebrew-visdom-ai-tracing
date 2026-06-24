class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.20.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.20.1/tracevault-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "84747ec055e56700b37b1bea72e1561da2cd34672ec3c1ecdcc4d6766cfa0be9"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.20.1/tracevault-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "60f8abe07ac8e7c25597d1f6e40b25f23941b09e116993dbaacab776f53c0d2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.20.1/tracevault-v0.20.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70d5ee93bd245ab33ff8315083c105771cbb0268ba4686e125fd9f534911f31d"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.20.1/tracevault-v0.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5c06798551309d54475a4850da449308837176e85ee80ab3ea95f9b5f58bd11"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
