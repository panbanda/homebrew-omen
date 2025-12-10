class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.1/omen_2.6.1_darwin_arm64.tar.gz"
      sha256 "d87b088091968b8c271b487d7bb185f5385d8e97d571f9c176f299d1d48571c9"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.1/omen_2.6.1_darwin_amd64.tar.gz"
      sha256 "638d2ff46374dcd3ea4d8cce717f6cd65605f18236e476502dea04b794758f9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.1/omen_2.6.1_linux_arm64.tar.gz"
      sha256 "ec8bf3f9a6fd3ed21b18071ed0425b5ce2f12ab4bc60d04f20df5301e7ccbb4c"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.1/omen_2.6.1_linux_amd64.tar.gz"
      sha256 "d4e04edfe277734afaf671d4fbfd65787af1faf2d970445194a2a4bea2f74733"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
