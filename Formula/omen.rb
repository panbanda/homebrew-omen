class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.4/omen_1.4.4_darwin_arm64.tar.gz"
      sha256 "7ab67818d3b1d1728d0fee26e0f24737474378abe68390c91536332fda248153"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.4/omen_1.4.4_darwin_amd64.tar.gz"
      sha256 "d7c1f4f6cb05e59f922f4e7e5c02882417f7270ce95e08af7b0bdad5f84c0e86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.4/omen_1.4.4_linux_arm64.tar.gz"
      sha256 "c4925fc6a62a4b7c9b7a9d22f7a1a26c948c37c50d24ba7a2df75efcaf3628d5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.4/omen_1.4.4_linux_amd64.tar.gz"
      sha256 "c660d29fccb3fc7e3f36c8654acbaf3a50f18eafb012111415239f9b655355fd"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
