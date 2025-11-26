class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.0.8/omen_1.0.8_darwin_arm64.tar.gz"
      sha256 "ec729f3b74de5be00505673388bd94bded3959f803c119ebed48e76c32d04e3f"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.0.8/omen_1.0.8_darwin_amd64.tar.gz"
      sha256 "8c57b93927d48aa6e96c4116d0afff5680078825980b6211ef0a1a0a97f456bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.0.8/omen_1.0.8_linux_arm64.tar.gz"
      sha256 "c4bd1cbc4bacf83925076dfd80c337357e85f1c1b5c977dd8afaecbbf6e4864a"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.0.8/omen_1.0.8_linux_amd64.tar.gz"
      sha256 "1f21d5efea481d5ad79b7a806114ec1b519ff9e851b1c8122b394be6c1bdc32e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
