class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.7.0/omen_4.7.0_aarch64-apple-darwin.tar.gz"
      sha256 "dee3622df06797c219b69032aeccbb1256e02f451ffeb8d11101ec51c6b3ab3a"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.7.0/omen_4.7.0_x86_64-apple-darwin.tar.gz"
      sha256 "a6042644f69394d8cabda7355ec1100758015c79cae8ffc5864610a2064895d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.7.0/omen_4.7.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c55c18afb41c82c296b562def89e873aea568f314017ec72c78f718a975f82e4"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.7.0/omen_4.7.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3f112cd00d878dc0b8d1231b481ce3dc0fe6fd656e5b748a695b2532de74441"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
