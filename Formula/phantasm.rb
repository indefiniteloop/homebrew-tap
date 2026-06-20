class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.2.0/phantasm-0.2.0-macos-aarch64.tar.gz"
      sha256 "437c32f5095f60296d86196fd14c19ed649e710dcbe895a9b8cc1d6478460ce6"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.2.0/phantasm-0.2.0-macos-x86_64.tar.gz"
      sha256 "c7b67e6d33612aa5c5603422a30fe504fc97d11c059ba185c19b5377cd83ade5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.2.0/phantasm-0.2.0-linux-aarch64.tar.gz"
      sha256 "2a84bbed92b8b87c3d2486c6a917df75f69637257986d4980a491b67f925ba46"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.2.0/phantasm-0.2.0-linux-x86_64.tar.gz"
      sha256 "0a8626d9d3bf638e9e3435fcc3117ebd927dab7739f442d233a705b1fd4f70bf"
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
