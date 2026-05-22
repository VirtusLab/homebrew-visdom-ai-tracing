class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/softwaremill/tracevault"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.14.0/tracevault-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "a5e064a08b3f92e412cba3416fd3616b7f2fac7bd54a8ead0a555f018a5b10be"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.14.0/tracevault-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "b6dc6d44b8a289f35eae938b35ff0a8825f2a470e12d886eec08c8a1beac2751"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.14.0/tracevault-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a53c976dfc72f6f3e2ad4e4b12c836b852e9a7a44d0f1c16f471f3dea54bcb1c"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.14.0/tracevault-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6c314ebd006fd42ec0cec02c235fdc51cd3577942b5f835673b368a87ab3d62"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
