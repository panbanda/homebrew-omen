class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.6.0/omen_1.6.0_darwin_arm64.tar.gz"
      sha256 "45950cf068daebf18e2d8ae68170870fe3850d9bb3eab493d4570606176d9e69"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.6.0/omen_1.6.0_darwin_amd64.tar.gz"
      sha256 "382823609468a1f7f97b26682ef96408f4d5ba2b870bb0af9ebba39c1a9aa368"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.6.0/omen_1.6.0_linux_arm64.tar.gz"
      sha256 "501c74de699508b6b3cebec3a2df2662c5b6107bee536540bc0307877fc6d7d2"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.6.0/omen_1.6.0_linux_amd64.tar.gz"
      sha256 "009d81bbea44bd185bab8cfd0d180245067a5dc7350e0ed67dec9f64424ceff5"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
