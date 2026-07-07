class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.21.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.21.0/tracevault-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "a0d844f9ee54895a3eb8dafa42c2dc6879dcff2e1c822aa1a26047fe849ab712"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.21.0/tracevault-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "1638cd959c5cdb4012ad2b6c0fc915ea669e68cb0534c5dad2d8f7fba89a20fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.21.0/tracevault-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e9fba980812dd31e27e95ef98dc90997d19d1e1ef19f1b7b3fd0d295fc0baf9"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.21.0/tracevault-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "358cf78069ab5cb1c7012509abc980a917fd0c7adda829ea84c5ec9a12b74038"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
