class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.2.0/omen_1.2.0_darwin_arm64.tar.gz"
      sha256 "3fb1143e81218a7a065edc44b1d0e158a24da80797e9966a10b9a588a1c78f29"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.2.0/omen_1.2.0_darwin_amd64.tar.gz"
      sha256 "a9014bf374f919f97d7b7f89b46d6b99b588e9f007b93c265d147b4075e4ebea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.2.0/omen_1.2.0_linux_arm64.tar.gz"
      sha256 "b97ea7f0fcc8cb8263461cfcb7e752691d9228c9a681eed437984939278e4290"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.2.0/omen_1.2.0_linux_amd64.tar.gz"
      sha256 "34d04fe7bc4fff3d7ff2c3cc5d29d9f12d0362722588eb68eea3be52b042dbe8"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
