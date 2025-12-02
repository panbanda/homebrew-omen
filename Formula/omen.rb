class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.3.2/omen_1.3.2_darwin_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.3.2/omen_1.3.2_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.3.2/omen_1.3.2_linux_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.3.2/omen_1.3.2_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
