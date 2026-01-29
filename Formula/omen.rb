class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.14.1/omen_4.14.1_aarch64-apple-darwin.tar.gz"
      sha256 "ca2f0a8925a2958afd8f753487bc755f1717483f0a8a107e7c3ec865ff0ca94f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.14.1/omen_4.14.1_x86_64-apple-darwin.tar.gz"
      sha256 "582ba01b2227d6c5b4cf46681d6f6de6994bedd76a5862987d594c66b9aed06e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.14.1/omen_4.14.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9904dd84b448d984f901fbaf621e39365a235c9add985c78d9c173ecd9c636a9"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.14.1/omen_4.14.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "780973c9e7a80037b41451c050a2bfd053ef87db25532ecc2a6b515965662f68"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
