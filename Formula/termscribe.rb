class Termscribe < Formula
  desc "Copy clean Markdown transcripts of recent shell commands and their output"
  homepage "https://github.com/mhmdxsadk/termscribe"
  url "https://github.com/mhmdxsadk/termscribe/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "1bd679e3a4e46e9c65fec2310b4bb4473c2738e020160a3b9fcb61b03d3c4083"
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
