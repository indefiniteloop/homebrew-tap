class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.4/phantasm-0.1.4-macos-aarch64.tar.gz"
      sha256 "f23f7316c1589e5e5ceb1d6c884a155aaef452ace1bad7f2699e220b14e43670"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.4/phantasm-0.1.4-macos-x86_64.tar.gz"
      sha256 "d2bea3c47edadcf6cc1967e8736b14cbd9e794fde63957240b2ecf09899fbe28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.4/phantasm-0.1.4-linux-aarch64.tar.gz"
      sha256 "093eacbe2e13bc15e83935b77491855707453fb826b9133892b3a191323b7a26"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.4/phantasm-0.1.4-linux-x86_64.tar.gz"
      sha256 "7b6dc4fbe54c7724fd8c3c23bc095700d81ef4440e59b6c1be36b27c186fd3e3"
    end
  end

  def install
    bin.install "phantasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phantasm --version")
  end
end
