class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.6/omen_1.4.6_darwin_arm64.tar.gz"
      sha256 "6e91fb85d4212bb4dfbe24db177729a8096a84ec92204d13719001764d355052"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.6/omen_1.4.6_darwin_amd64.tar.gz"
      sha256 "0946abb665f9d1b53a6ae5d06bfc7c49fa189ddf0539de3123406017c95917f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.6/omen_1.4.6_linux_arm64.tar.gz"
      sha256 "2fd144374e4594084a47eb9d52943d9b5095f3ea0f5cd4eef123068943c7393f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.6/omen_1.4.6_linux_amd64.tar.gz"
      sha256 "17e1beb513c7d3ef412e686dd7b8f730eb9dea0766b6689b4242225b1d91bed4"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
