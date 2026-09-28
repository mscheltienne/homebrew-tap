class GitCredit < Formula
  desc "Precise per-author contribution stats that see through squash merges"
  homepage "https://github.com/mscheltienne/git-credit"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.7.1/git-credit-aarch64-apple-darwin.tar.gz"
      sha256 "f910ecdbd1e8b749d509eab4525583b22e28e7100b4afef62d98089447288b73"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.7.1/git-credit-x86_64-apple-darwin.tar.gz"
      sha256 "9dc52bc491c2f5048ab14f9d03b0966199a8ff6742e052679ef426222da11118"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.7.1/git-credit-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cee6f7c743211e215dfbbab9fed9e7907ce4093ae3b0378c1cc47d80d65f627e"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.7.1/git-credit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cad13e6f5af6ca9799b94a34e5383b7ac1ae2064185bf95eb34af9ee6adf5463"
    end
  end

  def install
    bin.install "git-credit"
  end

  test do
    system bin/"git-credit", "--version"
  end
end
