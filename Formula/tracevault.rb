class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.29.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.4/tracevault-v0.29.4-aarch64-apple-darwin.tar.gz"
      sha256 "29ad52e6791403f87d02007b009a895cf1dd57c8d8a72390c2dd353f49ac8fc2"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.4/tracevault-v0.29.4-x86_64-apple-darwin.tar.gz"
      sha256 "99bb50b314ab84e3406b7ccfc22570a3db303a3f3d31bcac2b6069794d872d22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.4/tracevault-v0.29.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3a866fd637d664d68e5751605cc082e50ab7afb26f9aff3c19b7111aac5016a"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.4/tracevault-v0.29.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1822647897e080daf06eb2adece1e4928199b353dd5a7f2f28282f496ef74a4b"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
