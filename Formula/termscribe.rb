class Termscribe < Formula
  desc "Copy clean Markdown transcripts of recent shell commands and their output"
  homepage "https://github.com/mhmdxsadk/termscribe"
  url "https://github.com/mhmdxsadk/termscribe/archive/refs/tags/termscribe-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "2b423ee9087eebad27fc3554ba5f0f624c2f1fb6caed61d63333ff0a642d4a8a"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Run this once to add the shell integration to ~/.zshrc:
        termscribe setup
      Then start a new terminal session.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termscribe --version")
  end
end
