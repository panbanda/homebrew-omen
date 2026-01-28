class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.13.0/omen_4.13.0_aarch64-apple-darwin.tar.gz"
      sha256 "e988bae7b8aff30206b8405360e9c716ef2a0786e60f7475d63ebb628a9cfe3f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.13.0/omen_4.13.0_x86_64-apple-darwin.tar.gz"
      sha256 "e503a3a66e27f31f27382a64a833a8c5c66bbd213746dfe038864fa0c7dec37c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.13.0/omen_4.13.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30d27c1de7c5348fca4290d4e2451262e957200016fb55aa29d8f6a0544808ef"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.13.0/omen_4.13.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "851ee83043201cdb8f50f7b2ac27d9b276b15ed1f53cab6ccb21e4f8ec4cefee"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
