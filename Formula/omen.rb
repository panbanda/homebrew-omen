class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "omen-v1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.2.0/omen_omen-v1.2.0_darwin_arm64.tar.gz"
      sha256 "bb1348c8483542cee8f0c748d78f901424bc4a51d3e2e75e152fbee539605484"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.2.0/omen_omen-v1.2.0_darwin_amd64.tar.gz"
      sha256 "56af200cf38e0d33db50bbc401047197c85cd914896dd3995c7a31986defb7b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.2.0/omen_omen-v1.2.0_linux_arm64.tar.gz"
      sha256 "9df78d0511c5fc024fc8a3320494b93af909995f51259e057c77b05e27f2fbc1"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.2.0/omen_omen-v1.2.0_linux_amd64.tar.gz"
      sha256 "c57eb7fb7df4b36a7d7f262ebde1ba889f4146a4aa4d9857756107a340cefe6b"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
