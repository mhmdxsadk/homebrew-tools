class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  url "https://github.com/mhmdxsadk/buu/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "99ae26e7749658551dde4c2839f90e0e110a764049ffd3f4fab9ecacd79ae11f"
  license "MIT"

  bottle do
    root_url "https://github.com/mhmdxsadk/homebrew-tools/releases/download/buu-1.0.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5a8b11997c42eba5f48aaf859611f9b46da414262bd024309e576b469b0dcc5d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/buu"
  end

  test do
    system "#{bin}/buu", "--version"
  end
end
