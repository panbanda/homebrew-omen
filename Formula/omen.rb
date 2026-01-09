class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.5.0/omen_4.5.0_aarch64-apple-darwin.tar.gz"
      sha256 "a1b2f04bb5174f4732ac62b68d9f7759fa92face0c99a73b646d7789ab38f4c5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.5.0/omen_4.5.0_x86_64-apple-darwin.tar.gz"
      sha256 "ae9a3b212da7475e479da33d8e55a314f174d921bc70e0245dce08c7aa8dd201"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.5.0/omen_4.5.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29f88e820cb95a4a3d7e5101e3eca464b6e42c22ff98cab8aee0c4d885a6b271"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.5.0/omen_4.5.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cd0659dbffd4313968e165cf27654e9432edfbd0a34910e1c1c7fc8fd05ee40"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
