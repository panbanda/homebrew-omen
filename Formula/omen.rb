class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.21.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.2/omen_4.21.2_aarch64-apple-darwin.tar.gz"
      sha256 "c7253197475967c3879f1c6596d90ff9c1ab6855e75fd9d0283b5447b75135d2"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.2/omen_4.21.2_x86_64-apple-darwin.tar.gz"
      sha256 "2ca4b3c560023866412197452a6f9155eb6593844d2ea3a5d7063dc5f8c70388"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.2/omen_4.21.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "932aeba4c7db6721ce4588ffc6d73cf2f19bd1eb5f259896ed0bd7968f0e8bbf"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.21.2/omen_4.21.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "926018bc17f39eea59930984e9cac85b1097e1435c941682c2fc5cdde2d6ad16"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
