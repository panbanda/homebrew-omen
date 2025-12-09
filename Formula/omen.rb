class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.3/omen_2.4.3_darwin_arm64.tar.gz"
      sha256 "4ac30ccc485965ee1d9081e7403092b1293ee65857115806741467d894d54fa1"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.3/omen_2.4.3_darwin_amd64.tar.gz"
      sha256 "061f656f2e036237db52905e2f33147feb95e54bef3b97112d9f105e6b1d1386"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.3/omen_2.4.3_linux_arm64.tar.gz"
      sha256 "a8a3a07ab311a2513845be8c176f25cb412714d8c9d6702d05acdb9819e46ca8"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.3/omen_2.4.3_linux_amd64.tar.gz"
      sha256 "aa97ff01b8c9e87be1eb7ed48654233609ad13b6898f51febfc2d8e4008b1786"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
