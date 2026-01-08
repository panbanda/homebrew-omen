class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.3.1/omen_4.3.1_aarch64-apple-darwin.tar.gz"
      sha256 "35ffd88bc0d05c037ff2ceff7ebcad6abf6d01840421a4648c962ee842620670"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.3.1/omen_4.3.1_x86_64-apple-darwin.tar.gz"
      sha256 "f166da5698dbab91c49c11e29c3e73e8a5c16f42345697b235912845626f9b2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.3.1/omen_4.3.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7cdcc60b8bb762017c13d71a2779a398764894c8b81957984e9add97dadb6111"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.3.1/omen_4.3.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36cdf8bbee0aaf27d2a8b85aad11c20c9df426c6490c5703e2872a163c45e623"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
