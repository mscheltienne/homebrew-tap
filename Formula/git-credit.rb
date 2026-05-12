class GitCredit < Formula
  desc "Precise per-author contribution stats that see through squash merges"
  homepage "https://github.com/mscheltienne/git-credit"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.4.0/git-credit-aarch64-apple-darwin.tar.gz"
      sha256 "e7981344cd754ffcb111b4f6c44406a37bacef6a9e93fa0dafd5006a6e3d1a36"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.4.0/git-credit-x86_64-apple-darwin.tar.gz"
      sha256 "2455c2e4bf2911a0320943ccb554069313370c9b43dcf10def4b4737598a0a32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.4.0/git-credit-aarch64-unknown-linux-musl.tar.gz"
      sha256 "659a0659fc684f1bcb3203f5b0fa52053940041eb559f0cb49e1982be761386b"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.4.0/git-credit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9416379269341306330ef64371e6b63d1f6c537f6c707955c136bb6c56fe38fa"
    end
  end

  def install
    bin.install "git-credit"
  end

  test do
    system bin/"git-credit", "--version"
  end
end
