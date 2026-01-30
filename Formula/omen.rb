class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.18.0/omen_4.18.0_aarch64-apple-darwin.tar.gz"
      sha256 "ca8cddc3d8cef4873ceee9a101d52b1a9482d24600433516a4bbb3de89cd430f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.18.0/omen_4.18.0_x86_64-apple-darwin.tar.gz"
      sha256 "bad6d991fafedee579050476880df60e005542af2209ac248362279cd627e86a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.18.0/omen_4.18.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2ddcfad15d5b277163dc7f1ac9cd9a65d9f5f85317a954f3cce9e93508f265e"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.18.0/omen_4.18.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fe485625ca957d57c7caa8cb7b7af6d2bb01da004e30ee5d1970e4b8f10b6ea"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
