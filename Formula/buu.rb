class Buu < Formula
  desc "Lightweight CLI tool for maintaining Homebrew, written in Rust"
  homepage "https://github.com/mhmdxsadk/buu"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.0/buu_1.1.0_darwin_arm64.tar.gz"
      sha256 "f4910e8cf6c021d3c54404253750e762cfb943500871d24e77244b3a733d7b9d"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.0/buu_1.1.0_darwin_amd64.tar.gz"
      sha256 "941cfa49357ac29f4b718c1ae99a3d80a740168929b2824d4d71b4dfe5285605"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.0/buu_1.1.0_linux_arm64.tar.gz"
      sha256 "94d6a3fa506261be759df26b28b779bd64131b2446dc34c1f172e7043fb3296f"
    end
    on_intel do
      url "https://github.com/mhmdxsadk/buu/releases/download/v1.1.0/buu_1.1.0_linux_amd64.tar.gz"
      sha256 "42da7c400f016e30b067d26804992de543fb9851f1e069137453cccf4146e90f"
    end
  end

  def install
    bin.install "buu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/buu --version")
  end
end
