class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.0/omen_4.20.0_aarch64-apple-darwin.tar.gz"
      sha256 "8b859701dfa3513d03d71f9db13ebf8b8e9d75f423a44681b3bcb5bd26799c6e"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.0/omen_4.20.0_x86_64-apple-darwin.tar.gz"
      sha256 "284d491cac0cdb8c26ac1e22beb9be5b9a33131c10fe002328e5879021a11e5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.0/omen_4.20.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc6288d3e4e8b8fd8fae956bd2630e993d5f5b503e544b41c2d6b4728bdfeb6e"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.0/omen_4.20.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ade0b53e4347ebae5bdbd73f720001cdb50dcb5e52699f2482873fb11eb47d9"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
