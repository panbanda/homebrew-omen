class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.2.0/omen_2.2.0_darwin_arm64.tar.gz"
      sha256 "5893264574c13dbd951fc900f04ac8b2d16adf5967065907de9b16b736ebcf92"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.2.0/omen_2.2.0_darwin_amd64.tar.gz"
      sha256 "a35d136f593bac7e03b57f3692bf2633002f0e31e6b8bd12f0a21503cf2c2061"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.2.0/omen_2.2.0_linux_arm64.tar.gz"
      sha256 "9fc0be6d52b108cbe85e0aeff8fa5e4224e3b2a7e9da3a72a8ed542d966fe35a"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.2.0/omen_2.2.0_linux_amd64.tar.gz"
      sha256 "a8f66974dd5c0256fcb0b9731f2188811aee7aacf657eb5699ac048184c25bca"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
