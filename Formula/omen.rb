class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.1/omen_4.9.1_aarch64-apple-darwin.tar.gz"
      sha256 "d1d2e8b28fa5d1ad858075b828315791e8112252207750ea954d518a53cf712d"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.1/omen_4.9.1_x86_64-apple-darwin.tar.gz"
      sha256 "4df976da3924eadb9ff3d212d538480eb83d62e28fad605eb2e7686501b33ffc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.1/omen_4.9.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f809bf236cdfeb4c10f4654864f6a19b55deaecb6ae61bd7b510afd6c8f99a75"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.1/omen_4.9.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fe35e0ce75048dca91d2d9234a2838bdbaa309d20105154d554d7b0b485df95"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
