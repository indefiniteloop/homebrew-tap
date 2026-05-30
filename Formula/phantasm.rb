class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.2/phantasm-0.1.2-macos-aarch64.tar.gz"
      sha256 "826059835b7ba7987e2231e8d7ad6838f623f52ce78db6818041eab26094a4a7"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.2/phantasm-0.1.2-macos-x86_64.tar.gz"
      sha256 "7b321b1627d2b89598f0d9a4d99357f6a8c7eb6091f9dc1a7b3c539f43de813f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.2/phantasm-0.1.2-linux-aarch64.tar.gz"
      sha256 "582bb91b231833f4d4bc6889ff8239da0497490bb50971ed95f068e924d852d7"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.2/phantasm-0.1.2-linux-x86_64.tar.gz"
      sha256 "a09d60ee619aef25bb377f8300d51885a8c68559cf2d1889e74f81ec1961f977"
    end
  end

  def install
    bin.install "phantasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phantasm --version")
  end
end
