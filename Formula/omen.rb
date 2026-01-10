class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.7.1/omen_4.7.1_aarch64-apple-darwin.tar.gz"
      sha256 "6b1059401efc7febc30ae239255c9f008163da2e99afe9eec11147d36beab336"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.7.1/omen_4.7.1_x86_64-apple-darwin.tar.gz"
      sha256 "9a901d15829cbaaae02e6a18ccd9ff0c7bfb35c7b8d31574b7faa8f30b80f48e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.7.1/omen_4.7.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52c2bdbf91088df6c4a6eb577962246089d3a26a4bd3ed47fa1a8964b6877c2f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.7.1/omen_4.7.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a487706db76bd688332d8ce028e584b84ed1743f350e1351d75cc1f6d59d49c"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
