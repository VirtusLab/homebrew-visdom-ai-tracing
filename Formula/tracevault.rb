class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/softwaremill/tracevault"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.13.0/tracevault-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "5b1200ba9a17fa5bb993d2218dc13d18bd928913fa9668bc5da6bfb237c30625"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.13.0/tracevault-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "595d05de1ab80ce06db6f8bcbfc872e6423d564c3cb554de2112386f73e2fd17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.13.0/tracevault-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b14db237fdfb4f8592b1f6b253b4cdb833f60077211e286a4c2f51d0d994893"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.13.0/tracevault-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5f0d982248bd78241ac1285bc58c361f1b3d54f25ed8334f111296ff92ec12d"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
