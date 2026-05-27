class GitCredit < Formula
  desc "Precise per-author contribution stats that see through squash merges"
  homepage "https://github.com/mscheltienne/git-credit"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.6.0/git-credit-aarch64-apple-darwin.tar.gz"
      sha256 "14fa5cbfb73286751c2379c26ca184f74159f84d3434eaebed8525b1b7fe31ae"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.6.0/git-credit-x86_64-apple-darwin.tar.gz"
      sha256 "12877184b471d8de7ae7dc907f5dc256564d6bc939eaa3c7fc3edbd9e8a6a825"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.6.0/git-credit-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c39b52b2866e90e4166bd3d478573bffe7a5718b60e95723c7a8e6808d9e61fb"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.6.0/git-credit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cdb247e872d9df6f78fd483070e5064dd8594658e761469f9c4c6dcd050cc320"
    end
  end

  def install
    bin.install "git-credit"
  end

  test do
    system bin/"git-credit", "--version"
  end
end
