class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.5.0/omen_2.5.0_darwin_arm64.tar.gz"
      sha256 "9828d8bb3095f188e512809eac1ac3110a088f01b0515bd290e1becb1fc2faf4"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.5.0/omen_2.5.0_darwin_amd64.tar.gz"
      sha256 "9411a006184c4b937295ae4471aac4da79a6c147c3c1d09bf9e82d0439e09433"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.5.0/omen_2.5.0_linux_arm64.tar.gz"
      sha256 "7d1b941db455dd56a721d3c6676c96e41c0bfcad0611a888b3cccb564c8ff604"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.5.0/omen_2.5.0_linux_amd64.tar.gz"
      sha256 "67f6699d0173e7c00e90e33a99ba9bcb23a6c2f63ba492a820a334769a31430a"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
