class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.2/omen_1.4.2_darwin_arm64.tar.gz"
      sha256 "b22a71af95c85e95adf70032bf3c648fc39f8100c713060d83394962abf9aee4"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.2/omen_1.4.2_darwin_amd64.tar.gz"
      sha256 "e01ccfaf94042a339c70e4d866998da043e317cf77aca3f1a0668e6fc01131d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.2/omen_1.4.2_linux_arm64.tar.gz"
      sha256 "7ccf8bc08fb400b09551a81113a0deb064921c97112abb37d275767c072c60b9"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.4.2/omen_1.4.2_linux_amd64.tar.gz"
      sha256 "e9b716143e4155ce81a1dc8d09e8e28d72b42f5ab4f59b7421c8b886b3b96c3b"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
