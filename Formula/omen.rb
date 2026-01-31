class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.1/omen_4.20.1_aarch64-apple-darwin.tar.gz"
      sha256 "dedae6c599cfd8f78be8b2ba4a74dc734c383e0b04c786cb1581f3505d636df3"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.1/omen_4.20.1_x86_64-apple-darwin.tar.gz"
      sha256 "444f8e2d7101f6319d11309617c9cd6fb1e095610d39336e104f0bcbd1faf56b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.1/omen_4.20.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "883867fcb7c2b4b0e61b7806499470e9b3d80480f2cb3ae24575d594075d48f1"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.1/omen_4.20.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d2e8c918b9419ad1aa803788e333302d0b8703ef2ac1553ca70302920bda6bc"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
