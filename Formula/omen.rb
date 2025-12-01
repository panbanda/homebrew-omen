class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "omen-v1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.0.0/omen_omen-v1.0.0_darwin_arm64.tar.gz"
      sha256 "9c2d6bbcb0b99824daa7a237018d904de361cd36fcab7c3e0b36904d9939d5db"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.0.0/omen_omen-v1.0.0_darwin_amd64.tar.gz"
      sha256 "c3c3edbc67ecb1baa51d8fbf56e5022abc46ddc63c3da3ecff5040db97e1bb97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v1.0.0/omen_omen-v1.0.0_linux_arm64.tar.gz"
      sha256 "938984a91a795c35f81e7014510ff810745eabca4d9c9ed019f7f2b4b7d242fd"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v1.0.0/omen_omen-v1.0.0_linux_amd64.tar.gz"
      sha256 "2e21d002768e7c555426f1d369d13352af47ebe50dcada27ca7827dddc614ec1"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
