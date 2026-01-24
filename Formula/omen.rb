class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.1/omen_4.10.1_aarch64-apple-darwin.tar.gz"
      sha256 "0722fdcbb2bf64eca8e8ceb5f954f605f91d31f5a3c4c382c1fab1072a43a036"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.1/omen_4.10.1_x86_64-apple-darwin.tar.gz"
      sha256 "e68bb4a73a3bc319b06cbd006dc347590a10a08ec45f993d614621af2da884bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.1/omen_4.10.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e30a32f4640dfb8f7757d5859080e3056e03190bfa2e1cc81554e1e2b55b3d1b"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.1/omen_4.10.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5cd148d4552bd4a899e1aee026456fe837ca27a01d28af824edf6c8a381e38f"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
