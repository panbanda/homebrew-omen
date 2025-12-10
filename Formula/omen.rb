class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.2/omen_2.6.2_darwin_arm64.tar.gz"
      sha256 "0bf4fe4744233ebf635f3e203363b7d8a7da54c6f46c5aba73b437b8a2e0afdd"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.2/omen_2.6.2_darwin_amd64.tar.gz"
      sha256 "f890b136c9bdd29a9d83f805c63a380f4296a68973d4dd4f300dd550ca83f5d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.2/omen_2.6.2_linux_arm64.tar.gz"
      sha256 "914cc28f57c32ec08460f97df90db6c3b5a5308d3e7295a76f7472958020e148"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.6.2/omen_2.6.2_linux_amd64.tar.gz"
      sha256 "f84d5ab5a565afc2d33f68547a7b9df57efc69032c3b1d7c020afd6c2e7043a7"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
