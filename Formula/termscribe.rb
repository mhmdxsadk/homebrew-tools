class Termscribe < Formula
  desc "Copy clean Markdown transcripts of recent shell commands and their output"
  homepage "https://github.com/mhmdxsadk/termscribe"
  url "https://github.com/mhmdxsadk/termscribe/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "e7996c9cfe7740077ed8dc9b5d173395fa98065afae55a35eda089505dfc8700"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Run this once to make Ghostty start termscribe:
        termscribe setup
      Then reload the Ghostty config (Cmd+Shift+,) and open a new tab.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termscribe --version")
  end
end
