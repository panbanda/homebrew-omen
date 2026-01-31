class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.20.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.2/omen_4.20.2_aarch64-apple-darwin.tar.gz"
      sha256 "652c1c676697800ff74eeccfd68e48da0b9be35d9e82ba2d50549403e5374a81"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.2/omen_4.20.2_x86_64-apple-darwin.tar.gz"
      sha256 "57065d44b8101c416101bc61c457845008253f4b91dae2516382378a0ba6e55c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.2/omen_4.20.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac4f94e0ac3d17936df1f67d721b5471cb4000196d80fb327b60b32ad0eaa54f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.20.2/omen_4.20.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57f734fdd13af5863e3b184ae3113d6a4e46b6cbd4aaa24346dde335ec1635b3"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
