class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.3/omen_4.0.3_aarch64-apple-darwin.tar.gz"
      sha256 "7573f97a7b980fc1c5bf64aedd1079f80173e96f64c0afdd65b5857574060d00"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.3/omen_4.0.3_x86_64-apple-darwin.tar.gz"
      sha256 "8aece5b82b48727e32c9f41ea1f4346623947a75b5a0bb9fe7264cd5c8a9f2aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.3/omen_4.0.3_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e19737e1d769e56c76a506a9bca73680dc84b0a63e77150eb7311258430db93"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.0.3/omen_4.0.3_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e99bffd9ce5db0c74e2bc9e8eb1e37b469ae123f3be7edd75e81ae79ceae3ac"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
