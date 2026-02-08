class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.23.0/omen_4.23.0_aarch64-apple-darwin.tar.gz"
      sha256 "1ed279389dca6d74942c452770b549907e580a94c1f147312135663890129cdd"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.23.0/omen_4.23.0_x86_64-apple-darwin.tar.gz"
      sha256 "98d9acb43ad4933fcb72111dff6e581f039618fa744eac3e817059cd8fc90412"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.23.0/omen_4.23.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a39741b82ce0c8058fa61cc02dbe923aae6fee0ba7316ab9d483901db73a5c1e"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.23.0/omen_4.23.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27fb1ee4f076ecf86fea385c9604ba2eda9bfae4e832dc155384205f29a79f8e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
