class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.7/omen_1.4.7_darwin_arm64.tar.gz"
      sha256 "60e6e75f312d59a5bcf3b16a15566266d050ab194a7b9e8edc4ed708e84fb91d"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.7/omen_1.4.7_darwin_amd64.tar.gz"
      sha256 "53682f1a31af4994352dcf0b7dfceef0e92f18bb986dfbd0552b17c9e78670b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.7/omen_1.4.7_linux_arm64.tar.gz"
      sha256 "e56788e530bf41ba7b231519c92b61c0f91689fc629938edbad90789952f9552"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.7/omen_1.4.7_linux_amd64.tar.gz"
      sha256 "516e3c81535c986e3934ce706824005984a90f44b16395b11baacb1e58ce8796"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
