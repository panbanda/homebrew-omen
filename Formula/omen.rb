class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.3.0/omen_4.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "21733d860bc4df7a96287a946e99600d7b36b9eb7e8006d0a429f7ae8800d62a"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.3.0/omen_4.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "17132365102f3f2a77e8afefe85fc8a62fe854bbb1a45c1c3c1a6faa7a118ce2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.3.0/omen_4.3.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e7773ce6e3242948989c68b241bc360db53e0d380b238f283918256e6683deb"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.3.0/omen_4.3.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93364d65bd6c9a25fbe149a4f98aba66a99a0c5cac0fceac8997c3ce5a48ed89"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
