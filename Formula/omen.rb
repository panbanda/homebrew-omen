class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.17.1/omen_4.17.1_aarch64-apple-darwin.tar.gz"
      sha256 "3f0e934039d9e54951687836d3a4ea48a0d753d4d938bbddaf95a7ed1369a27e"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.17.1/omen_4.17.1_x86_64-apple-darwin.tar.gz"
      sha256 "eb2d4c8f8fe852c14d711683c4b92977c574b9508f361a7304692d94eabf31b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.17.1/omen_4.17.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "405db78f70c976e9b3549c7048b4bbed79c8d986f4f98648efcf44f5593340d2"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.17.1/omen_4.17.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c96536638ae99129dbb797b31485cbcafb8f75f919e9e735a7ed2f074b4dc5aa"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
