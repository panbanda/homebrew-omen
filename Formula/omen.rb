class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.2/omen_4.10.2_aarch64-apple-darwin.tar.gz"
      sha256 "f8cfec9fc0e5c40c53611b43bc72b1bb47a012f6520b5c53bb429d32894327c5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.2/omen_4.10.2_x86_64-apple-darwin.tar.gz"
      sha256 "c82439ae633af24d6a5ff69bf916b4e0954639b222bf6eb37298b642ff04bedb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.2/omen_4.10.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52c558552f7f4d26397e50e525ed90360c7ca3be3dcb244e23e589ecd6e6bcc0"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.10.2/omen_4.10.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7fd58e2005c7d5314a3ed59d1260644f1bc039e9286c329455017b4da1d1d783"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
