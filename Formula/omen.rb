class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.3.0/omen_1.3.0_darwin_arm64.tar.gz"
      sha256 "b4f2348b7c88998f27a259e9e4dd7a92e2f8807be82e649fb5b5876433846f5f"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.3.0/omen_1.3.0_darwin_amd64.tar.gz"
      sha256 "0ae8865ad4c827a6da8778403bf9d9bb6552456a24ea3293b7d06372656201c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.3.0/omen_1.3.0_linux_arm64.tar.gz"
      sha256 "38499c4dd256651fd813f4e3a9af613cf72607a0662f104edebb0edb30331358"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.3.0/omen_1.3.0_linux_amd64.tar.gz"
      sha256 "6915f8f00113859320cb90e637ebc80fc12a42a7d1736f0a18b05e381ee6a3dc"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
