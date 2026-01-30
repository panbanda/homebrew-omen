class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.18.1/omen_4.18.1_aarch64-apple-darwin.tar.gz"
      sha256 "a6c321f72b5f05dee6af1a3dad02c84a3ea039d0b62c606ad21a0c0d7b4b9b05"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.18.1/omen_4.18.1_x86_64-apple-darwin.tar.gz"
      sha256 "8999f62b412ec6f51d35a97e09b8ccac3cb83e1c805bf737ae82bb8b5c53d0d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.18.1/omen_4.18.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ead92eb589e7d98f74e5739293aa5dc6d8907c77144089fcbeca3240a13e61e5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.18.1/omen_4.18.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e33d75cf299dfaef593b7149597b65f67f7adff2eabe8faff318a3aa35bf38e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
