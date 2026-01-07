class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.2.0/omen_4.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "1539cfc50b19cbbbd82f0ebea9ff2aa844c4fe688cb223f9cfc08cad838f50ba"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.2.0/omen_4.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "1ebbb0f4f3df0ec65bd8e52ad811685076f19ca2b1f2ec8e9dd57a74c291e049"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.2.0/omen_4.2.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ab99e4e61d38d21986ba5054daebbfafab773a1d6a74b31ffcb2bccbedcf7d6"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.2.0/omen_4.2.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a98dae0512e8a7e29f544a5aae29b13cf40558f623f88dcfb543548a54a42643"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
