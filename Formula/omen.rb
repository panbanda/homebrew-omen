class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.6.0/omen_1.6.0_darwin_arm64.tar.gz"
      sha256 "f75eb161bf06049c01871c87c45271a852ebe17acfaf1df714d728316d3e8315"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.6.0/omen_1.6.0_darwin_amd64.tar.gz"
      sha256 "47aeb0c03fcc555a76f3f15cd876c8278cbe9cb2da6745782ef72af669206678"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.6.0/omen_1.6.0_linux_arm64.tar.gz"
      sha256 "c05cc0aa13b4a48ad80509d2078eda7b776c5e00b4350e930ae27bfb9de7326d"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.6.0/omen_1.6.0_linux_amd64.tar.gz"
      sha256 "92ad78ef85d12c4956c03d7921fda64da80f88cd99d369678e6495ff76e1f5ac"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
