class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.14.0/omen_4.14.0_aarch64-apple-darwin.tar.gz"
      sha256 "c7ef84bff82dbfec47d1ba0649646b8b1b599ff5fb02474654ea43678853b52d"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.14.0/omen_4.14.0_x86_64-apple-darwin.tar.gz"
      sha256 "fe908a09cd3a536d84483c7665d43bce3b0464e55fb7e47edd13843a891f9579"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.14.0/omen_4.14.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15380690ecb72727cd6984f2b9534a30d2e56b5ca7c5243ca9fef07ab0c857c5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.14.0/omen_4.14.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0562651e11b259d2f78dae418ede6341df406adf5476af68d87f370a89662456"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
