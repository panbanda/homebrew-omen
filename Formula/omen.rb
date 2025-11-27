class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.5.0/omen_1.5.0_darwin_arm64.tar.gz"
      sha256 "68e07b6166e5a50c43ce3870cf25003b0943f08b2e3058b0f150cba979a28e09"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.5.0/omen_1.5.0_darwin_amd64.tar.gz"
      sha256 "273cffe124c908c9f50a4b9f2365c0c60214e043101f72408f500bcec6b374c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.5.0/omen_1.5.0_linux_arm64.tar.gz"
      sha256 "902734193cf3047ef1e196169054a58193ee1f6c361fc30f4e29300eb461e1c4"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.5.0/omen_1.5.0_linux_amd64.tar.gz"
      sha256 "e8af7534dbd2f6f7688e09ac4d9595bc8b8e827b6822cd10cb1470964c9e85d2"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
