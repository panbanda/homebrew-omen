class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.22.0/omen_4.22.0_aarch64-apple-darwin.tar.gz"
      sha256 "47536f150a24c46aaf54f84f6227090562b5389a7306e02c151c02bea780212e"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.22.0/omen_4.22.0_x86_64-apple-darwin.tar.gz"
      sha256 "0566797c58279751a62391c8de39f93b7ef5109ee5fd04f56c1cd598b8d787e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.22.0/omen_4.22.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15a0065d3959438a68e2db371af6686f6ce25cd53baf55e05af7f1711ace224e"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.22.0/omen_4.22.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec5c5ee694d97a77c0dcf8a7ce426b8e74232e29faa631eaaefb4d1489e4c9aa"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
