class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.20.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.3/omen_4.20.3_aarch64-apple-darwin.tar.gz"
      sha256 "fe5d76f1b610d0c4d7dbc9cf67880b49ca060685646be8746466c4cf2a341b74"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.3/omen_4.20.3_x86_64-apple-darwin.tar.gz"
      sha256 "95c52730d99dd87bdd8bd87a0fca4e508034a25cff8d25c8e6a3b0dbfa9881b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.3/omen_4.20.3_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3264bf2bfbb0439ec6f12546591b1bf2cca2b8042ba0df308c48e59a71e7f20a"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.3/omen_4.20.3_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f850a57a422e5b1b76122a8e6c9b1688976919e05959f7c192b4558458b94e1"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
