class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.6/phantasm-0.1.6-macos-aarch64.tar.gz"
      sha256 "cc68d12bcb17f39d4909bef2e1018de43b9f3323a68d96c65cae7d50ae2245b8"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.6/phantasm-0.1.6-macos-x86_64.tar.gz"
      sha256 "77553b2eb62178b6764ea334af096ba00c77039cacb1aaa7c7a135297d07c78e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.6/phantasm-0.1.6-linux-aarch64.tar.gz"
      sha256 "14f1adcd03d394e7a31f70ed42e7246e204537919644e6957e69c555f0d78b1b"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.6/phantasm-0.1.6-linux-x86_64.tar.gz"
      sha256 "d26c8072c02672242efea16165fc25de1238d6a1942b8c8381cf3de200fab90b"
    end
  end

  def install
    bin.install "phantasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phantasm --version")
  end
end
