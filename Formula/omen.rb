class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.8.0/omen_2.8.0_darwin_arm64.tar.gz"
      sha256 "9883ac463d7b10ebb0d0d34bfdf576e97aecb3d61c10314915cadd67359f6e80"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.8.0/omen_2.8.0_darwin_amd64.tar.gz"
      sha256 "d9e08b44b23a620885059dc9b85b4587006b69e04ec69d2abf987fe86acbe8a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.8.0/omen_2.8.0_linux_arm64.tar.gz"
      sha256 "d3fdeaf3b5a1de2a32989f36dcf6054169651fb7d5790cb0c5db534589ba220d"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.8.0/omen_2.8.0_linux_amd64.tar.gz"
      sha256 "27b0b3063840ceea80d638b4db39cce53471867085883fcf108ece87cae21b0e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
