class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.11.0/omen_4.11.0_aarch64-apple-darwin.tar.gz"
      sha256 "8290b72db25b78e8100482b4278a9beddfc868f7b21385d8654cabc25955bfad"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.11.0/omen_4.11.0_x86_64-apple-darwin.tar.gz"
      sha256 "a69a9e3d109a433743df3d35b787c9123a50955136a0757ae4c9c7dfaef71239"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.11.0/omen_4.11.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bcfb7f81763d2fde9e50220b9b50c7ed48beb2f7f106cca609b25627ddc4660f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.11.0/omen_4.11.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ec426a736cdd860fdef145a727783c7371428693a6272aa4db0a17f5e6256e9"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
