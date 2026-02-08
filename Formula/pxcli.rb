class Pxcli < Formula
  desc "Pixel art daemon and CLI with windowed GUI"
  homepage "https://github.com/vossenwout/pixel-art-cli"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_darwin_arm64.tar.gz"
      sha256 "7bab0105402fd7665a61b1457000914161d6635b8c41bf43bd1d9a0f910c3aa4"
    end
    on_intel do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_darwin_amd64.tar.gz"
      sha256 "55179edb17b736efbea74851af07ef4a902a5ad697c3756dc509f1ded0437019"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_linux_amd64.tar.gz"
      sha256 "13d40e623418cf5f64c7666725d04c9d86b45705fac352e15d8f46bdcd061ba1"
    end
    on_arm do
      odie "pxcli Linux arm64 binaries are not available yet"
    end
  end

  def install
    bin.install "pxcli"
  end

  test do
    system "#{bin}/pxcli", "--version"
  end
end
