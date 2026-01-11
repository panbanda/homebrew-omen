class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.0/omen_4.9.0_aarch64-apple-darwin.tar.gz"
      sha256 "2ad6c7f41e338e130c6d1a9fc4b443fd27c2b186085183f6c446103e1cf7dfee"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.0/omen_4.9.0_x86_64-apple-darwin.tar.gz"
      sha256 "a051a62cc6c7addb91facdc3e25054e6fbe8d0f6d8fb882d29124cd16b2dd72d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.0/omen_4.9.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e75b7d3eca7f11fdf2922b7c8e82f65c3e4931aa66a0350566422c75bf2e947"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.0/omen_4.9.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7271ce0ba0add38db73b148267d76533eb8c6339b909933fb3f224ec16aa04e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
