class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.24.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.24.0/tracevault-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "dfb4855b39e5f8c622c6f00e4d0b08fb7b2ab49978504127c2fcd49c444a0761"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.24.0/tracevault-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "9923609c06856a81a2c08e06d8862fd57c95157ce22447372814fc239ca17704"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.24.0/tracevault-v0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "400dc99ff22ec75ee4a20f750671dd7fa3aee831a221c9aeff3937136c48d7c2"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.24.0/tracevault-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c2809c1656c92afdb0318e3d9dde62204b905d943208821bd4e53fcc3f71c6a"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
