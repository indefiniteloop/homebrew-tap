class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.8/phantasm-0.1.8-macos-aarch64.tar.gz"
      sha256 "b97846bfe6d3e38928e99e25c74b0e00a855650f604f08f54c814952ab47019d"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.8/phantasm-0.1.8-macos-x86_64.tar.gz"
      sha256 "674c14113fb03e7b49f1ff6108a38c9569d241927299a27ad37128f4512cd7bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.8/phantasm-0.1.8-linux-aarch64.tar.gz"
      sha256 "46cbcbeb40539176cba5194c09bc470313997cd56a9766f3b8c59fc5ab8e951a"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.8/phantasm-0.1.8-linux-x86_64.tar.gz"
      sha256 "6b534b62896ce750e05f14e08648e533b1e19a478f7e7e29a48e16b263d3937b"
    end
  end

  def install
    bin.install "phantasm", "phm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phantasm --version")
    assert_match version.to_s, shell_output("#{bin}/phm --version")
  end
end
