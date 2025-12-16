class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.1.0/omen_3.1.0_darwin_arm64.tar.gz"
      sha256 "c0c5b398085f9a3e681d584d136bc64f0cb385713ead54c89d7e2fe0a80b8b28"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.1.0/omen_3.1.0_darwin_amd64.tar.gz"
      sha256 "a34dfeee75a559b805b7a91dea47e5d23ef3f80db78fad98ad8560474e80ad7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v3.1.0/omen_3.1.0_linux_arm64.tar.gz"
      sha256 "ea6c9fed4c8608a424f15ffe0cbab8d4ccc539996c934554cd20870829d30f6a"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v3.1.0/omen_3.1.0_linux_amd64.tar.gz"
      sha256 "14aa32d4c177c3c0d3f08da1f61e72155b519098f32861e0433ff9b5aa25f72b"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
