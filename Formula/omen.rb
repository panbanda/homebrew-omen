class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.6.0/omen_4.6.0_aarch64-apple-darwin.tar.gz"
      sha256 "c031378126cc1d58236eec2f97cfad226f79ef7e0146677783dc104c2948ab61"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.6.0/omen_4.6.0_x86_64-apple-darwin.tar.gz"
      sha256 "45b4d0193b7331bd894815cb8fde309b9c70d7a5a66ecc16504bdc035785c9d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.6.0/omen_4.6.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e6b823fbbf2f4b3754ea5469e1cbccada7de54986491c92447ae5b0950269b5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.6.0/omen_4.6.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fad10328079339a8f3e595f87052c567e934ca7ad9b3d3ae816d70eeb41e9c8e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
