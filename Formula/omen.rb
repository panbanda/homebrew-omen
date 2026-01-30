class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.16.0/omen_4.16.0_aarch64-apple-darwin.tar.gz"
      sha256 "216e9cd14b1c9de7e1803c7182b8cfe4235d4037dd1d273885ba2dd8ce62bf85"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.16.0/omen_4.16.0_x86_64-apple-darwin.tar.gz"
      sha256 "87841c8830cc10c47105d073dfb8c328f93d1db1b89b3f182a38bd2cc635b1ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.16.0/omen_4.16.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66d0c1e42f09c710353f91a5a3f48c41b92f0480ff924621f266433dba1a0af9"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.16.0/omen_4.16.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ffc42693d239bf5ee64e933b3224de5c49f746874729fefc3f94871f3f4982b5"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
