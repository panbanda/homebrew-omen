class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.0/omen_2.6.0_darwin_arm64.tar.gz"
      sha256 "bc5ad4624f522a1fa17404825bdc9e44e8f4e3b617b131af88a425cbdee165b0"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.0/omen_2.6.0_darwin_amd64.tar.gz"
      sha256 "763cca4b8743727ce27c9c05f945e0602d10e77e86e8fe73dc34ad3d692641a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.0/omen_2.6.0_linux_arm64.tar.gz"
      sha256 "3bbd51bd46e3ffb25599f26dce3f91b08107ca854842e06170cdc5d489d9c85c"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.0/omen_2.6.0_linux_amd64.tar.gz"
      sha256 "dd6f0440066d8c3ab5502c511a405d5df955732186ade4f7ab0862749a7534ba"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
