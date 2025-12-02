class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "omen-v1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.2.1/omen_omen-v1.2.1_darwin_arm64.tar.gz"
      sha256 "04ec8cfd21560bcbf531cdb5e40b4ac70d38a14242443971d6daa0a49e37a481"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.2.1/omen_omen-v1.2.1_darwin_amd64.tar.gz"
      sha256 "b34f50c3353e2d65a1659d116ff24184c6324ecf7edfe5455b3a9eb051dd7f60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.2.1/omen_omen-v1.2.1_linux_arm64.tar.gz"
      sha256 "29ab7fbdbc2c5cb1386ba7f50ce34368df4d00bd30f1678ac492a41f9ea0ab8c"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.2.1/omen_omen-v1.2.1_linux_amd64.tar.gz"
      sha256 "91a1f0cc578b840985376a816df08208e4cd364550c287de062354a3a46b609c"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
