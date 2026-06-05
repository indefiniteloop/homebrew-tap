class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.7/phantasm-0.1.7-macos-aarch64.tar.gz"
      sha256 "68be7d649447b33011f568d1cb60bc34ca142a5b3275f27f5d16aab4f7ab892f"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.7/phantasm-0.1.7-macos-x86_64.tar.gz"
      sha256 "9852da85d39ed3e00f62f6cccbdfb494c5f950c61a2173d109dd99f2af8b3296"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.7/phantasm-0.1.7-linux-aarch64.tar.gz"
      sha256 "508141ccfb034a306269160ff2f9abd9f127697c8251f73a930c68d7c71e1899"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.7/phantasm-0.1.7-linux-x86_64.tar.gz"
      sha256 "9d1e15c74fe14ad5cf5cd0530f384ad2c822990da7096857bb2d4403e077b0fb"
    end
  end

  def install
    bin.install "phantasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phantasm --version")
  end
end
