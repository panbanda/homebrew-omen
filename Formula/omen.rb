class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.0/omen_2.4.0_darwin_arm64.tar.gz"
      sha256 "119d5f398782a03f42a3c2b7f097fef6a6f627c96f52b6d6b1da728b30c34a35"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.0/omen_2.4.0_darwin_amd64.tar.gz"
      sha256 "b4ea95c00cc354f7323a86e94169609a970a864a4847189203b7cddc34fca80a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.0/omen_2.4.0_linux_arm64.tar.gz"
      sha256 "1a8229633386ff9a9f357570b675313efe875642726360ee071909c9fc6ec44c"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v2.4.0/omen_2.4.0_linux_amd64.tar.gz"
      sha256 "dac48121580b47409722ce7c443161f96c74f39481b4df5d63e4a8e581777410"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
