class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.2/buu_1.1.2_darwin_arm64.tar.gz"
      sha256 "88605fca4f5fff0646962db4745d6d843566cb77f34af5938611be30286766b7"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.2/buu_1.1.2_darwin_amd64.tar.gz"
      sha256 "a0334e7ad17015220e331583bb28eec6f2a85528e2ea3ce50c0c8d47533b0155"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.2/buu_1.1.2_linux_arm64.tar.gz"
      sha256 "2a53b88f2fd77280fd02d4d35092f46a0441f142e333fad2e5cd85059b3bbe9d"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.2/buu_1.1.2_linux_amd64.tar.gz"
      sha256 "e2c02b7b7d25b6a4a730d8d99912162bdd8dd7eed59aa2bc7a57f513ab26b192"
    end
  end

  def install
    bin.install "buu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buu --version")
  end
end
