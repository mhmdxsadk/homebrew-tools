class Termscribe < Formula
  desc "Copy clean Markdown transcripts of recent shell commands and their output"
  homepage "https://github.com/mhmdxsadk/termscribe"
  url "https://github.com/mhmdxsadk/termscribe/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "3fec3cab1faf2bc37c68e885b9948c78041e1ac053955741cb4af96e45f630f3"
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
