class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.1.0/omen_2.1.0_darwin_arm64.tar.gz"
      sha256 "4a530a09913f4aa8f28b1fcfa06a6e79151024bedc887b750863ef6a864f221a"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.1.0/omen_2.1.0_darwin_amd64.tar.gz"
      sha256 "82bb38e6abe94be1e3dc58346b4d0103bc695981f765ad02fd66e2f38621f732"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.1.0/omen_2.1.0_linux_arm64.tar.gz"
      sha256 "2e4542a7e19ef426bab35a181bc711f457be9888cb3fa51088e0ae2076c200ce"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.1.0/omen_2.1.0_linux_amd64.tar.gz"
      sha256 "b9c9c262804e87c399c563802e9dc92fb6df5909e0927879751889d2088d981a"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
