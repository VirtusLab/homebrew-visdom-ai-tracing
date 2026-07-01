class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.20.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.20.2/tracevault-v0.20.2-aarch64-apple-darwin.tar.gz"
      sha256 "c3739d28666478f7706d65b4a97c49800e643552fa5edab2e83fb5a52ef9da9f"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.20.2/tracevault-v0.20.2-x86_64-apple-darwin.tar.gz"
      sha256 "586d446d8efb732045c78753a3bb2b21825028cb22b861afa500d55240fb495c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.20.2/tracevault-v0.20.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "019606180d61b36091b0415c2ddc61858d99066d40a41db75c8f3a57cc212d2b"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.20.2/tracevault-v0.20.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86c82a1ec2e948a16d067cbd8510095d4109216dd32d15d7a013840b81724986"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
