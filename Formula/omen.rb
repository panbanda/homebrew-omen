class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.13.1/omen_4.13.1_aarch64-apple-darwin.tar.gz"
      sha256 "a7bbac017600614e9606ec642d101e2967c1cf8e482f28f72c4fad6bbd67c044"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.13.1/omen_4.13.1_x86_64-apple-darwin.tar.gz"
      sha256 "5daefaf4152e843b5bc9c03c8aa964401003035f08eb39623193e3ca31fb096a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.13.1/omen_4.13.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54abcb543bc234714bdeb48f81023f1bbffda7e8b84b5e1572a55100024a4ed3"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.13.1/omen_4.13.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "288eb7d52c5ab8a7d65df9d8868eba982af164fbf935aecf60abcf7ac3e7bb78"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
