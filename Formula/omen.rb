class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v4.1.0/omen_4.1.0_darwin_arm64.tar.gz"
      sha256 "baca30b34de8221c70bb8b8999da70f681d2181f2e627c6e2f1f47589b9b8017"
    else
      url "https://github.com/panbanda/omen/releases/download/v4.1.0/omen_4.1.0_darwin_amd64.tar.gz"
      sha256 "07491fce89f807a6a749ebf7745d01e0b983171fb1b72f03ea4c88f2d58a5686"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v4.1.0/omen_4.1.0_linux_arm64.tar.gz"
      sha256 "55872dca42f7e3683cd013166fe2572fa303684e377d785478e3e6625e2ce8e1"
    else
      url "https://github.com/panbanda/omen/releases/download/v4.1.0/omen_4.1.0_linux_amd64.tar.gz"
      sha256 "4f925e61fda5d840bdbc9980d01c01074b07ffea3b71d8ca3f714aba4c1e37f3"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
