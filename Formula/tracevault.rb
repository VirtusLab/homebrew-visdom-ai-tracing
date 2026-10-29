class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.29.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.2/tracevault-v0.29.2-aarch64-apple-darwin.tar.gz"
      sha256 "2b965a124b576ba18d425d03148898cf1b3824c645e5b0f8bc41d41335f135f3"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.2/tracevault-v0.29.2-x86_64-apple-darwin.tar.gz"
      sha256 "60c83a5b327543241b9edbc6f16e1c7600346e7a773b3f9250126ce16eff0cfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.2/tracevault-v0.29.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6a2a0137606097f0538161ef0105b463f14990009adc980c8a85aca65da9e19"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.2/tracevault-v0.29.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6abc73e6a17854d572af2becaf055597051dad623ea9c0c7ff352d6de5b4a27"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
