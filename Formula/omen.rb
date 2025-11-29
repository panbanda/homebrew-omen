class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.5.2/omen_1.5.2_darwin_arm64.tar.gz"
      sha256 "1ac6a48361f66a7e348fa6cb9eee36f1856084f317b9c197e195d4c1fcb3fc38"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.5.2/omen_1.5.2_darwin_amd64.tar.gz"
      sha256 "8e931936ba6ef5612b0cd4b7cb6c24a2e1e585b178409caff7e3bec2422ffe71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.5.2/omen_1.5.2_linux_arm64.tar.gz"
      sha256 "69804349b55824cc538372ef5432bca2ce5102f2bd28676eb4f4d7bd41a9856b"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.5.2/omen_1.5.2_linux_amd64.tar.gz"
      sha256 "a5cb4849b24db6a25f7e4ac988746306a5649b45585334e2fc4840fd8e1fbf88"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
