class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "3.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.3.0/omen_3.3.0_darwin_arm64.tar.gz"
      sha256 "81d81ddf13ad552ffa3d65018f392513e1bd045aafba850f178da443526b23e5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.3.0/omen_3.3.0_darwin_amd64.tar.gz"
      sha256 "7611200fe5539c10d40d6ac048afa0154507e4e051303fb8991bd38dc65dcb28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.3.0/omen_3.3.0_linux_arm64.tar.gz"
      sha256 "973e539384a815c2c2eb2e05dd465cc27532828b160280017ca77786fb53e4f6"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.3.0/omen_3.3.0_linux_amd64.tar.gz"
      sha256 "55a803b02172ec8a959995a372035e98a53892fc7bd6ab3bcf1b231e6fd80ad2"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
