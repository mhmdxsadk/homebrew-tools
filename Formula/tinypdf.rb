class Tinypdf < Formula
  include Language::Python::Virtualenv

  desc "Lightweight CLI to compress PDF files using Ghostscript"
  homepage "https://github.com/mhmdxsadk/tinypdf"
  url "https://github.com/mhmdxsadk/tinypdf/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "51db3b8c6c19094892a52f9da4f51c11989a56c1546c9d24a8d588ffcb7b2c57"
  license "MIT"

  depends_on "python@3.12"
  depends_on "ghostscript"

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/source/c/colorama/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/source/p/prettytable/prettytable-3.16.0.tar.gz"
    sha256 "3c64b31719d961bf69c9a7e03d0c1e477320906a98da63952bc6698d6164ff57"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"in.ps").write("%!PS\n/Courier findfont 12 scalefont setfont 72 700 moveto (hi) show showpage\n")
    system Formula["ghostscript"].opt_bin/"gs", "-sDEVICE=pdfwrite", "-o", "in.pdf", "in.ps"
    system bin/"tinypdf", "-i", "in.pdf", "-o", "out.pdf"
    assert_predicate testpath/"out.pdf", :exist?
  end
end