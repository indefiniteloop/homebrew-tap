class Phantasm < Formula
  desc "Project-scoped memory runtime for AI coding agents"
  homepage "https://github.com/indefiniteloop/phantasm-dist"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.5/phantasm-0.1.5-macos-aarch64.tar.gz"
      sha256 "bfc28b8cab3113d56669f3c6c0f61b07c44e7469594614a9a2921a962711c24e"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.5/phantasm-0.1.5-macos-x86_64.tar.gz"
      sha256 "72723c01193e89255a22da9684e6061d080f28f3ccd3c098258df1364c598eaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.5/phantasm-0.1.5-linux-aarch64.tar.gz"
      sha256 "9b249480ea7d1eebebfa7989717671b642d4e2b7779794ae361d5cbd8fec969e"
    else
      url "https://github.com/indefiniteloop/phantasm-dist/releases/download/v0.1.5/phantasm-0.1.5-linux-x86_64.tar.gz"
      sha256 "fc0b19932ca490a8de81e2e5bab48ca7f56522ce8865cbc1807c43ff487fbb07"
    end
  end

  def install
    bin.install "phantasm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phantasm --version")
  end
end
