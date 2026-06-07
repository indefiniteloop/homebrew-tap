class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.9/phantasm-0.1.9-macos-aarch64.tar.gz"
      sha256 "5132d8d6a22808e1f26e2e3fcc2cefe475af634a92979106d525c713d1c0c132"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.9/phantasm-0.1.9-macos-x86_64.tar.gz"
      sha256 "2de9822552f3c3efb64a5cd563fe15d8cc88a45231b78429f09a9653ca88832a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.9/phantasm-0.1.9-linux-aarch64.tar.gz"
      sha256 "80e33a4c3cbc83dff64a616a71fdb275c92c8fdaadc969bc6871f953d40a9308"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.9/phantasm-0.1.9-linux-x86_64.tar.gz"
      sha256 "5a30003fd42ce49f527ff570f3d81b68ea9944ea742659f371c63cec47faa28e"
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
