class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.4.0/omen_4.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "81531e1cf35b8d01b389ed78bbc2c04e0128b3a7285c427db7517e4e187e49bd"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.4.0/omen_4.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "8537178f1a60e80ab9c7ceef3d6012292009bf5694153171c7e9f9ea2f4041a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.4.0/omen_4.4.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e65208248bd9c31b5dcd5411e1d245b1e6653b7261d3c93eb4af74b391045d1"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.4.0/omen_4.4.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56d846f96aa13dfea63bff3473bd279cc05cf8d600feafc3c06b44e327feb4e8"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
