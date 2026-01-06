class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.5/omen_4.0.5_aarch64-apple-darwin.tar.gz"
      sha256 "5e828f2daba925fdb39165c62290ead8754868c44f50f97b4b8c171615ebc254"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.5/omen_4.0.5_x86_64-apple-darwin.tar.gz"
      sha256 "47dcf2893063c0c67d79c4e31296bc55e80fb385890e41d92e80179619563021"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.5/omen_4.0.5_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b7dea95e366982ecfbde090ab0feff8e56ebd93441b068b5395470046952477"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.5/omen_4.0.5_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68af7ac9043d846285cfa8615ce82203d7712b1a3450c9d42d5a0c557ca671e1"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
