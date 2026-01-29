class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.15.0/omen_4.15.0_aarch64-apple-darwin.tar.gz"
      sha256 "5e3189c3727db85cf9f90b3bdc171d4987d28faf939648ec9eb36f67a9d53010"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.15.0/omen_4.15.0_x86_64-apple-darwin.tar.gz"
      sha256 "86bb3f4efb5bfdc848b2f1c1cb161b435696cd4634dfe766d09722af39c3d324"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.15.0/omen_4.15.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6eebcbcf58b3887c32390edd04fca288dd8ccd8a4aedd2ec4f0b7ff88152e467"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.15.0/omen_4.15.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ead192fbe7850eb8a53613bed2481fb0707b1ccdcd902cf70aca03ec9cad4c4a"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
