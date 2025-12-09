class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.0.0/omen_2.0.0_darwin_arm64.tar.gz"
      sha256 "61077bdfd01cce46c435e10a284496ad5792e28e3316c4de8f3a461177416880"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.0.0/omen_2.0.0_darwin_amd64.tar.gz"
      sha256 "44065fd2a5bd8bdb08ad8849ff836f494ae48ca7a606e95298cecaacc519d2d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.0.0/omen_2.0.0_linux_arm64.tar.gz"
      sha256 "1a6e77dc6cdf00eb4308e2955610933ced58503b4fdc27107ae54894910d1d65"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.0.0/omen_2.0.0_linux_amd64.tar.gz"
      sha256 "a2cd7c6fe07cf57990fd96817e6e9ff3e8be00c0682ff4f7e39e8d5fcc460d65"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
