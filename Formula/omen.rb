class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.7.0/omen_1.7.0_darwin_arm64.tar.gz"
      sha256 "e1d104597089660174a493469143268e6146f3fb231dc8e24a122121a1c36037"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.7.0/omen_1.7.0_darwin_amd64.tar.gz"
      sha256 "5e1663214f09330a7d0a1eee9fc98ba46d3f473f08efa34bbbecde3a294b23ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.7.0/omen_1.7.0_linux_arm64.tar.gz"
      sha256 "fe3e3b69ddb8b66ccb8118adc9f27340857a298cc2ac49b63bf9b7e0cc742fb1"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.7.0/omen_1.7.0_linux_amd64.tar.gz"
      sha256 "1324b9e3cc8b52d21d338d9df85edebc94ea76be9daa0141bea659c8bebe1c7d"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
