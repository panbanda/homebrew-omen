class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.1.0/omen_4.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "d13ca356cfb698d450d0b0a2b75ca0b26adec5e42bdae73028448860ee5a5ec2"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.1.0/omen_4.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "59652fa9dee7a649c2c7be964377910baab005aad9168a3f2c798172f62c8b02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.1.0/omen_4.1.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95a3d4fddf14da7450312311c37dc12090c2753f433bbd1c2a94ea86729146c8"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.1.0/omen_4.1.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b09cad5c804d32c12a00d521a506bf3680f66ecea2bb3261a3ba64a35b982b25"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
