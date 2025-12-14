class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  url "https://github.com/mhmdxsadk/buu/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "99ae26e7749658551dde4c2839f90e0e110a764049ffd3f4fab9ecacd79ae11f"
  license "MIT"

  bottle do
    root_url "https://github.com/mhmdxsadk/tools/releases/download/buu-1.0.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e27b841f05f9edb001da17f531876ceb3e35d4125c38afd11856069455d3727e"
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
