class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.2/omen_4.9.2_aarch64-apple-darwin.tar.gz"
      sha256 "13b20d9a2a46b87574b1ac0a05407bc2f9b8d7b6aff0f4a7e1f3217200f96381"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.2/omen_4.9.2_x86_64-apple-darwin.tar.gz"
      sha256 "411fa0debf6b2850a164a3ea2114212f9f2bd3c717108c49ebb8e9d8ae704001"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.2/omen_4.9.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7dc42085d0221d4e4f4a705cc03ab7607fe6e9c1b477ab433214c246d581a995"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.2/omen_4.9.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "591314cfd007f62cb9608311160d39b0442ddab04678e6ed9b0dbf1ea15d151d"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
