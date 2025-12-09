class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.3.0/omen_2.3.0_darwin_arm64.tar.gz"
      sha256 "42757b82a066ae62940db2a89a99f4eb098cde3f0321ccca9d69c7fd5aead16d"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.3.0/omen_2.3.0_darwin_amd64.tar.gz"
      sha256 "d6218b091b45a5d7964f8b4993323fc4904fea5faf81e4a3875fd37c85aa6b22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.3.0/omen_2.3.0_linux_arm64.tar.gz"
      sha256 "7db411de8663873e9e319a60fc1de5626d9278d25de30098d958cd1d93ab1692"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.3.0/omen_2.3.0_linux_amd64.tar.gz"
      sha256 "b299f2063a68d54ec6bc5571c60a3b71591797d53d6e7698735ceccb5fa2e551"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
