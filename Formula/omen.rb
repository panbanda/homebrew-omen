class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.7.2/omen_1.7.2_darwin_arm64.tar.gz"
      sha256 "07653550300f2a3d624b9458653fc240da733f2b35941e2093245c17393cd350"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.7.2/omen_1.7.2_darwin_amd64.tar.gz"
      sha256 "f511dcccbfa27adc5e461b73973c7341463104883b88c380ffd196ea015c60e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.7.2/omen_1.7.2_linux_arm64.tar.gz"
      sha256 "96cfd318a852268dbf0fc86cbf4441228bf38ad101fb47754fb845b6382ec309"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.7.2/omen_1.7.2_linux_amd64.tar.gz"
      sha256 "6ddfc42815986d47fad7c10dcc224f9775cd0c9e7cb01686240f6e791b3cfaa6"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
