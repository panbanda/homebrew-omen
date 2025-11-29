class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.5.3/omen_1.5.3_darwin_arm64.tar.gz"
      sha256 "0bbf58698cc9c5d1b817613a12ee197b5db98c5abd5c70c99a9aad086adb06b4"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.5.3/omen_1.5.3_darwin_amd64.tar.gz"
      sha256 "3507c469b5e1200e29a5b8f01858b06c28ef95567c88acfacf819c69aed73ead"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.5.3/omen_1.5.3_linux_arm64.tar.gz"
      sha256 "de6286941cc49a270157ee86a1bb98397108be7d10c4246da456b47eaf3a0ce0"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.5.3/omen_1.5.3_linux_amd64.tar.gz"
      sha256 "24995576fbfd028c511d69f6faa469788d8d09a7b1bff342638d966faac4beef"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
