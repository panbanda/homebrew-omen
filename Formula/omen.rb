class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.4/omen_4.9.4_aarch64-apple-darwin.tar.gz"
      sha256 "84b4d67a774d23d168c7f69a825432ce07f38305e66d2155cb29e7d40c0732a7"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.4/omen_4.9.4_x86_64-apple-darwin.tar.gz"
      sha256 "7dd718b2030c351e504353ac5f75cffa52cc37bde338dcc53fee5e473d21f30b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.4/omen_4.9.4_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c5ec79e6a688275bacc47ca9586fa1ba593d585addf60526955ff26b18ca46d"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.9.4/omen_4.9.4_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee20ccea4e30c5c4a768bff1905b6d565e93978e197e953dfb9ae7129a3d0a04"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
