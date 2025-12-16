class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.0.0/omen_3.0.0_darwin_arm64.tar.gz"
      sha256 "420b2d2558c5cb8f1e9c912cdfe4014023d5513321919d645aba2d3c08eef46a"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.0.0/omen_3.0.0_darwin_amd64.tar.gz"
      sha256 "e6da4e6fda82c87241d5ffe1720272269c9b8183a3aa8792f517eb0bcb9ed198"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.0.0/omen_3.0.0_linux_arm64.tar.gz"
      sha256 "d9c7250d634938c2cb586726893656994dd6665d21a0f9804a3393bf32ed085d"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.0.0/omen_3.0.0_linux_amd64.tar.gz"
      sha256 "9775253d0e68d9967cf952d863acfeb25ec70e413d51d4c24701a707a733e2c3"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
