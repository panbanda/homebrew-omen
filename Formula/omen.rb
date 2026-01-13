class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.3/omen_4.9.3_aarch64-apple-darwin.tar.gz"
      sha256 "832310996357f5ccc5d47a0ecaec976be38700f47287b517de94271e2959fd68"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.3/omen_4.9.3_x86_64-apple-darwin.tar.gz"
      sha256 "b32ea7874b7dfdf752755ce118b4ba24cddf11a0e4f34824dc470fbb73bdffd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.3/omen_4.9.3_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc12d9c2d501be24efcf2f347168d8b075ca51a27a7a8d993dece42ef66ce423"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.3/omen_4.9.3_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24ee232e3e92985e6e14db677e86dda6a54784d08977434a5f15ad9377b6917d"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
