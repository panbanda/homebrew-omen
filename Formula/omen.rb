class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.3/omen_2.6.3_darwin_arm64.tar.gz"
      sha256 "db4fb760ec1204165ad8679bda0be64c715494622846da6b29181e878fb71893"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.3/omen_2.6.3_darwin_amd64.tar.gz"
      sha256 "3b39566d4ddc929825e1bfe51e55268ca99b0b24703ac401062b96a1bb1124a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.3/omen_2.6.3_linux_arm64.tar.gz"
      sha256 "4e1d96d13c24fa4af0cd401c011eaac73034d6a58b9be44b0812c0afa780f904"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.3/omen_2.6.3_linux_amd64.tar.gz"
      sha256 "1cb57caf58a93608528de3d6e77a51787fdb0441219104eaeb19276450a728be"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
