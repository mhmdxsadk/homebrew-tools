class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.1/buu_1.1.1_darwin_arm64.tar.gz"
      sha256 "7c432ceb0fdba6a77a3fb5a2173f2cbea7f852dac81722dafb526892744f5d50"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.1/buu_1.1.1_darwin_amd64.tar.gz"
      sha256 "9b63972b366a400ba7e257d94e12d2fc46dd64da7e925eaad84ab127cc4dbf8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.1/buu_1.1.1_linux_arm64.tar.gz"
      sha256 "2dbf18f538d59d38ed391ae4327aec565d1b49ee8e22e95c1fb04bedb68fcbcc"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.1/buu_1.1.1_linux_amd64.tar.gz"
      sha256 "c75672f2cb59327306e9ace080b396ed5e20f139341491450aa99be0605f5cc9"
    end
  end

  def install
    bin.install "buu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buu --version")
  end
end
