class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  url "https://github.com/mhmdxsadk/buu/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "ecf56edfe032a1497ed4b8f7854daf4d9928a1cf6fa96b9a4dbdf5b5089d5c03"
  license "MIT"

  bottle do
    root_url "https://github.com/mhmdxsadk/homebrew-tools/releases/download/buu-1.0.3"
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "68f47f1c1f9a5a2db0372e7bd06858da1661f55a205e390042133a0ee70bf442"
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
