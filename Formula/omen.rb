class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.7.0/omen_2.7.0_darwin_arm64.tar.gz"
      sha256 "b5e1803a3efdb72568f282ed0cd812fe6de84d2fb6fda30e4dc6787820c1f2ec"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.7.0/omen_2.7.0_darwin_amd64.tar.gz"
      sha256 "b44844447f52b6c9beba426403ba1ddd6c93c86f64067b59e3c81cc5acd0c106"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.7.0/omen_2.7.0_linux_arm64.tar.gz"
      sha256 "58faa938d20100388568f2b7b7a6876d841769e794c8c086d742e533bece5ca2"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.7.0/omen_2.7.0_linux_amd64.tar.gz"
      sha256 "3c36c6e7cabdeec2b196855a96bbddec9435fdc1c8eddb23835f040a5538aef5"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
