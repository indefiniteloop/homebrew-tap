class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.2.1/phantasm-0.2.1-macos-aarch64.tar.gz"
      sha256 "7aabb281d94dce04eec07310f1b89037155061051ecc6e595c4620cb5ac9e6d9"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.2.1/phantasm-0.2.1-macos-x86_64.tar.gz"
      sha256 "9214a761dd5130dd52742c897d952f9b6832319f6ad3607aa4821052389c2c1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.2.1/phantasm-0.2.1-linux-aarch64.tar.gz"
      sha256 "a52e2d68d7ef0397485545e1f79afb09eff23e6d5deab2ce5e80bd845cea968a"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.2.1/phantasm-0.2.1-linux-x86_64.tar.gz"
      sha256 "14c992907b47863440ee1ea2d373082f43a58d62dd17f579b8c5df11c0b30ea1"
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
