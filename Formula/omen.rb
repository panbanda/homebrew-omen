class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "omen-v1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.1.0/omen_omen-v1.1.0_darwin_arm64.tar.gz"
      sha256 "18c0287c6916d098d569d69402987fc261742d79fa120b1af639c19ffb1f087f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.1.0/omen_omen-v1.1.0_darwin_amd64.tar.gz"
      sha256 "511a77e8b9bb278805d2f55362f18ae9f31940e39a41e3983b8fbdb010a049ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.1.0/omen_omen-v1.1.0_linux_arm64.tar.gz"
      sha256 "fa8dc78ca7fa20db1ea8aa8c590ac6b9eb190bd7fa4f49745748e2c605ad95e6"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.1.0/omen_omen-v1.1.0_linux_amd64.tar.gz"
      sha256 "7dde138f9fbbd09ee24253185e0c3fd468b743caee38e725fb53b5bef3f1d46e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
