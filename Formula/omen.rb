class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.4.0/omen_1.4.0_darwin_arm64.tar.gz"
      sha256 "081e2865a8f8994209dc222f7ad03418616420842b6e944b3951e65cf672a086"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.4.0/omen_1.4.0_darwin_amd64.tar.gz"
      sha256 "1513a0c0ad6985587f23959dc10299238c4d2198f535126b943ae491505507ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.4.0/omen_1.4.0_linux_arm64.tar.gz"
      sha256 "ecd349f357b5c96c908224b0e014594739d20bed2eff1409fa984a7b8a90bc44"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.4.0/omen_1.4.0_linux_amd64.tar.gz"
      sha256 "4850bfb74f04667069d1e5f487e76e206fcefc686a2e291b0f5cb48588411e8f"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
