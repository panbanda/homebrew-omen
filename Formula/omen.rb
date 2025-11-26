class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.1.0/omen_1.1.0_darwin_arm64.tar.gz"
      sha256 "7f958278a81a70130dad116fa9a2fc1430720eae23745ed7ec87834f85332c33"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.1.0/omen_1.1.0_darwin_amd64.tar.gz"
      sha256 "cb9997b070f79a946979acb9a122450b9c5e6aad9b86b38989e55be28803fe97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/v1.1.0/omen_1.1.0_linux_arm64.tar.gz"
      sha256 "788c0f716ad3b8dbea6797fbf1adf41e530f29032cebd82d6e20bc2db77cd5db"
    else
      url "https://github.com/panbanda/omen/releases/download/v1.1.0/omen_1.1.0_linux_amd64.tar.gz"
      sha256 "5c7fbdd4f9b875813eb5345e0b813e92f06a53fc165aaad59aec50352d304ee9"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
