class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.7.1/omen_1.7.1_darwin_arm64.tar.gz"
      sha256 "8a6c69aff9d0d0abc049cc5b88ac50865fd33dc28bba08058b7eaa90da20312f"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.7.1/omen_1.7.1_darwin_amd64.tar.gz"
      sha256 "21d4b34e0ebcabe55f879c06645470dd40fc8ea84d1709396ad0d2b6a3f64407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.7.1/omen_1.7.1_linux_arm64.tar.gz"
      sha256 "c38b7912f41da9857658475613001f53da23ab1d2387a91a9535e81f04974599"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.7.1/omen_1.7.1_linux_amd64.tar.gz"
      sha256 "911efcc9054dceadfc17f31ffb8fc134dc5b1f6521e1f15530d2066f79e627ab"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
