class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  url "https://github.com/mhmdxsadk/buu/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "1e0d26711325cb50e82de9a9524e729b3d09e3ed32852c8483940ac713ea2439"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/buu"
  end

  test do
    system "#{bin}/buu", "--version"
  end
end