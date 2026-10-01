class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.28.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.3/tracevault-v0.28.3-aarch64-apple-darwin.tar.gz"
      sha256 "8c3ca800258ac342a65fd7f03912c57e75f06107f84ad7b48bea7f455f1afdbe"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.3/tracevault-v0.28.3-x86_64-apple-darwin.tar.gz"
      sha256 "96c05b225aa195c826b1144ba8ef3cbc774a2ae6aacb53b97c2f407ef8f265e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.3/tracevault-v0.28.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4fa479247d5010089102ea8537f20ce37f19707cb9201ff8435e01e62ea55f4"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.3/tracevault-v0.28.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27e0af43233b76e29d8aa2f987b5d445facd2d5cba15fdd2c372ac4cfd5973fa"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
