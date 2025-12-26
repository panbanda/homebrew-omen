class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.2.0/omen_3.2.0_darwin_arm64.tar.gz"
      sha256 "4e818a79636428e177949114a240ee314e541ef1b96e3b6243b3c74ac8bc7c63"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.2.0/omen_3.2.0_darwin_amd64.tar.gz"
      sha256 "7c26e10bcb8b1462771a057e56281b982ca75068e868739b1e275516c920e0f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.2.0/omen_3.2.0_linux_arm64.tar.gz"
      sha256 "0c9162dbd69af83922c13e5eef0c4a018c280cecfec01b520afdca945854da26"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.2.0/omen_3.2.0_linux_amd64.tar.gz"
      sha256 "032e64537233769776e246be1c860b5c1cf65e877333f6584be74063b434a0ae"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
