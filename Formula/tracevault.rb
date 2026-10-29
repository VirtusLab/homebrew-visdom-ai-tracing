class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.29.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.1/tracevault-v0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "b96749533830043a0bc9e0eacd32240b9b427881b21d03c732b07972e3ea21ea"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.1/tracevault-v0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "6285d07c1d7f271a17066abb45c5e6e7c4e3c54dbb35071d184679779d997085"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.1/tracevault-v0.29.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc253c1eaba6a2fbb6eba6bd129ebe1581d17720f5ec6a34454ccf93c3ef973d"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.29.1/tracevault-v0.29.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6527c721763ef2372265ef829a1d1690540d3a9e801bbec1bdf777b23def91d"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
