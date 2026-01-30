class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.19.0/omen_4.19.0_aarch64-apple-darwin.tar.gz"
      sha256 "dee9a78ca8bc41b2a9841e0c33e8b9c9dbc504a59c4e2f7bcc9be1038e5ae320"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.19.0/omen_4.19.0_x86_64-apple-darwin.tar.gz"
      sha256 "9bc80dbf94dcb0221595cf9172ef05f8746ef9b79bbcf1eaa24bbf704485746c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.19.0/omen_4.19.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "587d7938c55a81c099774db71df69fd8e0aa3653de03651a7fd3851f03a0b6a1"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.19.0/omen_4.19.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69eb5f6716082fa25e254b1f14038d7f04a5848e4ee9336209e0f63f90f4c4b7"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
