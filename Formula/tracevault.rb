class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/VirtusLab/visdom-ai-tracing-cli"
  version "0.22.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.22.0/tracevault-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "7b91459ba657196c7740a3d6e2b6ade9dbd204e1c42c2ce6e80c9f2c5a8078a6"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.22.0/tracevault-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a3a4b9df51e7860c4380ba72051e4f1456c116701427535f3283f27c70f9992"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.22.0/tracevault-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afe2b94dac5beb618515b102aa8072ed27bc4d69e622ab76855bd5f6e1e5520d"
    end
    on_intel do
      url "https://github.com/VirtusLab/visdom-ai-tracing-cli/releases/download/v0.22.0/tracevault-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d75f7397b334ed92bb1bc49ff7c54375706e853daf8fda7e27b4062ebe6936f9"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end
