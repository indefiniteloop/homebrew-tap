class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.3/phantasm-0.1.3-macos-aarch64.tar.gz"
      sha256 "9a6cdabfe85e93a3c7f7678a187cbfb5088c3d941708ee6b0d2f9df8a4abe798"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.3/phantasm-0.1.3-macos-x86_64.tar.gz"
      sha256 "dccfc3f988583394176e88405a7a2f967e1dee955c5baccaa46d886a5d317fca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.3/phantasm-0.1.3-linux-aarch64.tar.gz"
      sha256 "0b1628596b8e553953336d1546080e54d995e911b905a53ca7aee45f61e09d53"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.3/phantasm-0.1.3-linux-x86_64.tar.gz"
      sha256 "62356c4aafc63af3d19cf290c2a4b50cb7b66c11f3670475d43af38a89fe872b"
    end
  end

  def install
    bin.install "phantasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phantasm --version")
  end
end
