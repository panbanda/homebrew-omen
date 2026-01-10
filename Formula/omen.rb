class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.8.0/omen_4.8.0_aarch64-apple-darwin.tar.gz"
      sha256 "5c128478a69f8bf55eca78ddc605b8eb74e715a3333cd6235d0f04dbdd87e690"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.8.0/omen_4.8.0_x86_64-apple-darwin.tar.gz"
      sha256 "cfc9b515d4632b53bce3393c8590b0a2a915eac7675fd88a91f83b820743669e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.8.0/omen_4.8.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8665b0c325a4b4c05412d1a63591f558931c5702b5a6413a52f1bd9a6644b0f7"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.8.0/omen_4.8.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5815b175e6d71e856f534bf5f2eb6e94519c569bc886cb5c6fa864a01a9147b1"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
