class Termscribe < Formula
  desc "Copy clean Markdown transcripts of recent shell commands and their output"
  homepage "https://github.com/mhmdxsadk/termscribe"
  url "https://github.com/mhmdxsadk/termscribe/archive/refs/tags/v0.5.3.tar.gz"
  sha256 "41dc8b3c0056f00743e58ee97d37c0551f66fb7e5a06b7f0d80cda1dfdbcc4cb"
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
