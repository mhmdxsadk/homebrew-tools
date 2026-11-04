class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.2.0/buu_1.2.0_darwin_arm64.tar.gz"
      sha256 "6ca8380df3b48757fd7ac864e9b3e3c1b2f9186d7493e4d2e67b6e50b5cff44f"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.2.0/buu_1.2.0_darwin_amd64.tar.gz"
      sha256 "479d5f214d85828d1adeec4ca5552283e3df1a8010f896ed95271c3e908870c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.2.0/buu_1.2.0_linux_arm64.tar.gz"
      sha256 "6551a3da7fdbd71a9101a27867e05cd775699f94770f4e62fe48eec082731d79"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.2.0/buu_1.2.0_linux_amd64.tar.gz"
      sha256 "fad9049dad61838ebf65eb70af10bf8deea0d4db1f087deb0e35fbb76a0183f3"
    end
  end

  def install
    bin.install "buu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buu --version")
  end
end
