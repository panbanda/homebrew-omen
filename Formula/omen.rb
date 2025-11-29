class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.5.1/omen_1.5.1_darwin_arm64.tar.gz"
      sha256 "5fa7f7a8d7f2e8b3010e1f7ba82b8be4bbf04e611af1ebff024ed3bafc5046f8"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.5.1/omen_1.5.1_darwin_amd64.tar.gz"
      sha256 "d0b34070cdde13799278431cd6e1c16197cd4ab6f000d0d6d4fd971ddcc12a27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.5.1/omen_1.5.1_linux_arm64.tar.gz"
      sha256 "81598129db7f724b91b6b2e19b1300e10194646a3fca7ed9cc41898311dbbbab"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.5.1/omen_1.5.1_linux_amd64.tar.gz"
      sha256 "c14bbc75ade3509d8ceb23354c39e8000cf7599eeca86735fc846d1402585aec"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
