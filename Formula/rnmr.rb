class Rnmr < Formula
  include Language::Python::Virtualenv

  desc "Lightweight command-line tool for renaming files and directories"
  homepage "https://github.com/mhmdxsadk/rnmr"
  url "https://github.com/mhmdxsadk/rnmr/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "a80f916b3d3c8bd74a3d484b37b337b61b59d37c017ce42d5ff6b497cfe8c934"
  license "MIT"

  bottle do
    root_url "https://github.com/mhmdxsadk/homebrew-tools/releases/download/rnmr-1.0.6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "83690d92ddbf24e6b60c79d192512b5f1f751dcfb927132d738d584ebd3a0559"
  end

  depends_on "python@3.12"

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/source/c/colorama/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"x.txt").write("content")
    system "#{bin}/rnmr", "x.txt", "y.txt"
    assert_predicate testpath/"y.txt", :exist?
    assert_equal "content", (testpath/"y.txt").read.strip
  end
end