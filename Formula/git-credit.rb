class GitCredit < Formula
  desc "Precise per-author contribution stats that see through squash merges"
  homepage "https://github.com/mscheltienne/git-credit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.2.0/git-credit-aarch64-apple-darwin.tar.gz"
      sha256 "d61d507581dffbf8c502def4c545ca0a53839d00c45d702da8e7f194fedf324e"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.2.0/git-credit-x86_64-apple-darwin.tar.gz"
      sha256 "0367941b4bf78f0ca8fdc03b2037132d4f3c3d88746f358be84e1c9bae710536"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.2.0/git-credit-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d359f2c3a0a2997fdafe3b576a5913eab8cfcbcfd9ea54958d2a1de5921b6aa1"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.2.0/git-credit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33a31887b9d8dda1a912a71939abcef0883ff29eb06dbd910b54e8bdc842d6ac"
    end
  end

  def install
    bin.install "git-credit"
  end

  test do
    system bin/"git-credit", "--version"
  end
end
