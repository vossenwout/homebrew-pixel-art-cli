class Pxcli < Formula
  desc "Pixel art daemon and CLI with windowed GUI"
  homepage "https://github.com/vossenwout/pixel-art-cli"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_darwin_arm64.tar.gz"
      sha256 "dfd18630d60b4c335a98d50a7ef25bbf77d03377698f6b5051530ade315d089c"
    end
    on_intel do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_darwin_amd64.tar.gz"
      sha256 "c9345f0bee279702370c8540d40e34bd92e05e0a0059ba8acf38ef3b6472efa2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_linux_amd64.tar.gz"
      sha256 "fbae8a766ec7942f26c62144e909b8dbad9af881584a73c43714196b8fb012dd"
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
