class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.28.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.0/tracevault-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "1267cba225e9ea3d375b4cdbf8f41cb2db3334179ada026da7d60a8dd1c4a5b2"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.0/tracevault-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "0bbf05fb9661cc657eb417c9938cec58ca1da0e5294804c7437856ebecc4d708"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.0/tracevault-v0.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "430192e4699a7f94c54c40584c7340dd0afee88d99e52e27208b85f718b4e494"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.28.0/tracevault-v0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ecdf93578ef0fd43589990385996c9060530fa443b89a9c6b2648f40ed41a9f"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
