class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.3/omen_1.4.3_darwin_arm64.tar.gz"
      sha256 "d28d69b9e425188905db0e116a7f7c8294e9a73987268939455f82e97e1f5985"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.3/omen_1.4.3_darwin_amd64.tar.gz"
      sha256 "11b0e7d423f4b8a4224001ada7ce87a7a598c39e2040630e0b7ba7bea343637c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.3/omen_1.4.3_linux_arm64.tar.gz"
      sha256 "94799b3db86eb0e1a40784f58ea3083d28445ebd32205762d84246c1a5ba90e1"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.3/omen_1.4.3_linux_amd64.tar.gz"
      sha256 "b78ae85482153ead39a82fada34d8a0b278db62107946156cf04da0402900f25"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
