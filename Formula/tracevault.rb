class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.23.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.1/tracevault-v0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "6224b59f69646514d9b5710bcbe85702627a7775d85dd20746a17d6e74b57d9f"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.1/tracevault-v0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "452cfd6c216e5f7b3776b5584e2048f1238e69e9fbdf281383db87ae61c1b2c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.1/tracevault-v0.23.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ab4464b37d2413476be043853607095a90e30fe3bd71bf7c3b214ff3dcedc92"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.23.1/tracevault-v0.23.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebd7dd3f218eb8d6dc873ff3931a56222ffba3c27181567e09ae6905e83d122b"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
