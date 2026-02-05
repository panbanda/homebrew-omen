class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.0/omen_4.21.0_aarch64-apple-darwin.tar.gz"
      sha256 "32436a19ff7d834d35477aac73b422a763b466954d63b40be069eabf365c8659"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.0/omen_4.21.0_x86_64-apple-darwin.tar.gz"
      sha256 "23a4fa0cecb5e7d1e11829cb8c5f985b24ed7b07123d4042457e66afdac7e9e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.0/omen_4.21.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38713a282f422b57e6d45da4b76f22bcc40c27aefde37664bb908e0ddf7aeafe"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.0/omen_4.21.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46d86af76765878aa48220ae9a196e828ff639caebd6a5fc480f1d3f4b4a3af7"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
