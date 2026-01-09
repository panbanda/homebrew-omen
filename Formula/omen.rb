class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.5.1/omen_4.5.1_aarch64-apple-darwin.tar.gz"
      sha256 "cd2633a17f60f52467a7e0d0c915bb0af26e88b1d6f4c440dd525e2efb2b25bc"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.5.1/omen_4.5.1_x86_64-apple-darwin.tar.gz"
      sha256 "91d701bdb772ddaee58b78a58a23655b87eda6ad0f6f1c929bca983b90be68e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.5.1/omen_4.5.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77ff84f7ff28de5e339d24069e949c6cbb97a6109d28919e874527d3b1a69663"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.5.1/omen_4.5.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bef03869fedd3cc8e3d80f3c62a6c76bb48bba1ac047e728c2c5f9f5db682210"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
