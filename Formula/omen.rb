class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.1/omen_2.4.1_darwin_arm64.tar.gz"
      sha256 "8fbdfdb6f5f329cf49ad80e0792daada93e8ed9a130da8d7df7c02884328efef"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.1/omen_2.4.1_darwin_amd64.tar.gz"
      sha256 "243099ad0ccff7ff743beb282fb0cfa74aaa7eb921c60b4c4977e9e79222c9e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.1/omen_2.4.1_linux_arm64.tar.gz"
      sha256 "a48791dd339204876c6736944cb808f641b71e58eb6c7cd3f338cd2a2c93c2e5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.1/omen_2.4.1_linux_amd64.tar.gz"
      sha256 "f29bc5a2163023f49e2abbff725c0c8b03038fbc2affd312940f6c613bae9f59"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
