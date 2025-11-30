class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "omen-v3.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.0.1/omen_omen-v3.0.1_darwin_arm64.tar.gz"
      sha256 "3c1832a82c3bf12d81d9d1f0874b5fff0d980d0bce2c89b6c9dbd9e5a388dc2d"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.0.1/omen_omen-v3.0.1_darwin_amd64.tar.gz"
      sha256 "f83c8d856fbcac078e774195ae3e0f1ca464f5dd806b11062049ee5795f7bb8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.0.1/omen_omen-v3.0.1_linux_arm64.tar.gz"
      sha256 "18c1eb14a81fc14270a4510f7071277e09a644eaea2fe163b629f9ad88d117d3"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.0.1/omen_omen-v3.0.1_linux_amd64.tar.gz"
      sha256 "366adca173e4c61190695001e3ebfb9e2dfd94922435bc42b137bdb77f1f1a4a"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
