class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.0/omen_4.10.0_aarch64-apple-darwin.tar.gz"
      sha256 "20f84c2eb32b8cb67d07229b5cae65245312f1148be898978b7e544f78db3d89"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.0/omen_4.10.0_x86_64-apple-darwin.tar.gz"
      sha256 "3bb4eeffbfecb1782179bd6c7e35d0dc59640a3ec5ebdfed2d7bbae5e1155cc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.0/omen_4.10.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "efb5cee1da3cea6e54d03091e7d1eb3c7d78fcbfde2150a63a5e2cd60d2dc329"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.0/omen_4.10.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8eda3c8275b09708702bbc2919221bd7340a20b5d06909aacae5b9362bb19968"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
