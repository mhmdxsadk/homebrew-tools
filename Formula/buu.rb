class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  url "https://github.com/mhmdxsadk/buu/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "ecf56edfe032a1497ed4b8f7854daf4d9928a1cf6fa96b9a4dbdf5b5089d5c03"
  license "MIT"

  bottle do
    root_url "https://github.com/mhmdxsadk/homebrew-tools/releases/download/buu-1.0.3"
    rebuild 3
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "a86c02c064df1a15b132aafe458c43a835957e0cf5cc46eac5a27fb423f48cbe"
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
