class Pxcli < Formula
  desc "Pixel art daemon and CLI with windowed GUI"
  homepage "https://github.com/vossenwout/pixel-art-cli"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_darwin_arm64.tar.gz"
      sha256 "ee348ff1337b7e989331279101d800a9799cfb9a8b68a9d84c587f382c29ba0e"
    end
    on_intel do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_darwin_amd64.tar.gz"
      sha256 "c0a653f6f99b28a8f5d6fcf937c6f3cbe68934096c6b107505ea571e51435a16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vossenwout/pixel-art-cli/releases/download/v0.0.1/pxcli_0.0.1_linux_amd64.tar.gz"
      sha256 "eef7b8abbdd5ffe9284e97c2bbaa9409d78d621f9ccf4217c2bd579e317640d7"
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
