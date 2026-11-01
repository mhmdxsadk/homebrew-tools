class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.3/buu_1.1.3_darwin_arm64.tar.gz"
      sha256 "d6eb3997fdd1b0129b395ab066f0f8ac4c3165564cdafceb93fb4f28b8d7b035"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.3/buu_1.1.3_darwin_amd64.tar.gz"
      sha256 "ef522164d04606d4ffc7cd28d6482c9a751131c800ceba0f8fd67f75d5d663b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.3/buu_1.1.3_linux_arm64.tar.gz"
      sha256 "600e92af5d310bebfe4ecefe99f4b567d70f58fc798726e01e3f4bddd622ea80"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.3/buu_1.1.3_linux_amd64.tar.gz"
      sha256 "7768229edc3e03b4dfb0786eed5af2581e81cbae854ff18567590605414d7c8d"
    end
  end

  def install
    bin.install "buu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buu --version")
  end
end
