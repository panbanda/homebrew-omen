class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.1/omen_4.21.1_aarch64-apple-darwin.tar.gz"
      sha256 "12979d3df0992ca0a9a40d1e447ac7d465cc0fefd0e0db15cc65af285c92ac51"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.1/omen_4.21.1_x86_64-apple-darwin.tar.gz"
      sha256 "78cda72e3e590a81b389276077bb9a86f8417f3e4d74aa17f7bfbdf7f3107785"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.1/omen_4.21.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "483d8e3c6c35e5a0d050c14b9b68da1d80c8f53b01a3a52e3347bb40fb12e80b"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.1/omen_4.21.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3767bbba57fe610cd02d18019e802f74d8a9a1a31d3f75f08f35210ae0df1523"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
