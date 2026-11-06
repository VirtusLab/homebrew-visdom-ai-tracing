class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.29.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.3/tracevault-v0.29.3-aarch64-apple-darwin.tar.gz"
      sha256 "0c3b968283ced444124e99e9c2ccc95e8c3a79ea957f7e62591918fed4b67148"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.3/tracevault-v0.29.3-x86_64-apple-darwin.tar.gz"
      sha256 "59d8364f8984a1c57854fcccf97a61c0c971dd988c4940c9900ce738b1bec36e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.3/tracevault-v0.29.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5d28180c175f16a70ee12c1a40fec72de30642be553995895579b367e2d1459"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.3/tracevault-v0.29.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4f949b6c32bd5de9a0436819003b79ea42e08f86f6f01d748944fdb6432e825"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
