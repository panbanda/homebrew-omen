class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.2/omen_2.4.2_darwin_arm64.tar.gz"
      sha256 "0466e0821677d73e7fe1a5f509033b403a3561d0e3b6be01125a5ad5661855e4"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.2/omen_2.4.2_darwin_amd64.tar.gz"
      sha256 "632d603dcf2989dd00ef3bb8c4aa7aceb2f90363a282c1b95e5e7a0f7465a5fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.2/omen_2.4.2_linux_arm64.tar.gz"
      sha256 "808cdd622e8d936bc06254ef1c419a57622aa70726a17e5e9f8080b041e2fda8"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.2/omen_2.4.2_linux_amd64.tar.gz"
      sha256 "c5b3c201c15a04b90e0f0e6639a8d5887c488d7a0b482261372a7aa1544af6e9"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
