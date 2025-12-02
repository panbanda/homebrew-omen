class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.5/omen_1.4.5_darwin_arm64.tar.gz"
      sha256 "26895760cd56c304790c73c6bfea54056e89ab57c362adb0fa2d95814d1faab3"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.5/omen_1.4.5_darwin_amd64.tar.gz"
      sha256 "422c4a5c18ec3b320085206dda12b70570693ea854214f0932b2da8a5d6ce7fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.5/omen_1.4.5_linux_arm64.tar.gz"
      sha256 "e3d7988bddb166c3e0e99ec111ba59f2513c665deb58fc9dfdb0e5aefcbca511"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.5/omen_1.4.5_linux_amd64.tar.gz"
      sha256 "a931f3b5959acf73d402e40f136044799470e91924065752a713b935cfca3906"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
