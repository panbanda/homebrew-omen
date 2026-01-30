class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.17.0/omen_4.17.0_aarch64-apple-darwin.tar.gz"
      sha256 "a6b62068a850b222350ed6d1fb58724c0b5b00c6b37fccc0bfc14df38b596305"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.17.0/omen_4.17.0_x86_64-apple-darwin.tar.gz"
      sha256 "eea3beb61605873ebc1f84dc1a058f2b3c759abcf756c0da4826e18b9982a035"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.17.0/omen_4.17.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08de215ea449d6ff250888441397087a9ebba8379497aee9e7973eca02dba594"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.17.0/omen_4.17.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11c2b4e098900f2ad7c82ad41f33c1ef06b0125c8a9f8be7c856c4abe1b1ae2f"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
