class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  url "https://github.com/mhmdxsadk/buu/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "99ae26e7749658551dde4c2839f90e0e110a764049ffd3f4fab9ecacd79ae11f"
  license "MIT"

  bottle do
    root_url "https://github.com/mhmdxsadk/homebrew-tools/releases/download/buu-1.0.2"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9861ab5e4cf6d26ff39010174a79dd67f5134ac3e2766e0fbc2cbbd1f0fd6e6d"
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
