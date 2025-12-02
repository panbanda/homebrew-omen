class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.5.0/omen_1.5.0_darwin_arm64.tar.gz"
      sha256 "8cbf98a654a2f32ff27d7079b2687154ce9e6603fbd693021383805677590990"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.5.0/omen_1.5.0_darwin_amd64.tar.gz"
      sha256 "1297c5d19e9edf577e32b9f2e7127b818fcb857069d8ccdfcf67522fdeba3ec5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.5.0/omen_1.5.0_linux_arm64.tar.gz"
      sha256 "e5b3df6429082fe176fc4e0e2efbec6e356abd5fc7b311b9df7568dadad2ef2f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.5.0/omen_1.5.0_linux_amd64.tar.gz"
      sha256 "dc3cc222e980e7328bf9750bdb7427f7f67140291564b55281561a17af33cf3e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
