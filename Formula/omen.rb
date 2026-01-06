class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.4/omen_4.0.4_aarch64-apple-darwin.tar.gz"
      sha256 "2ae6c66632ba912c217afddc1aa432eec0e53f70d550dc83c0a6ea765a346da8"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.4/omen_4.0.4_x86_64-apple-darwin.tar.gz"
      sha256 "47fb18fc48fd5797b055e125e5a9a71664502bf787a5b77c262c8d12568c8006"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.4/omen_4.0.4_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b50965467075d9fe1d0d555ab0d71f0da076ccb7a5a14987d5b03ae2572f5a4"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.4/omen_4.0.4_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c057bff101299c29d8e63071d7e466d189e3d2b12d871f155cde025337043bb"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
