class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.12.0/omen_4.12.0_aarch64-apple-darwin.tar.gz"
      sha256 "3a63d23d46d49f9bfc1a71b2e3e4196e031e597d2529a9f30c35c3fcb6bfd0bd"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.12.0/omen_4.12.0_x86_64-apple-darwin.tar.gz"
      sha256 "caa1c121ad439b5baaec236f68094b7cfb734d255e80c2c403fee424460fc022"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.12.0/omen_4.12.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9266011204fb4e154a1f8bd024e518767c6fe89ad64bfa155f9a4a28fe0cf684"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.12.0/omen_4.12.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0cc03fa8c600fc6d8b1c5ac95774bce5719ae35d793ccb51a150f74d0938eff4"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
