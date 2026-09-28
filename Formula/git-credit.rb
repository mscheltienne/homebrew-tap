class GitCredit < Formula
  desc "Precise per-author contribution stats that see through squash merges"
  homepage "https://github.com/mscheltienne/git-credit"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.7.0/git-credit-aarch64-apple-darwin.tar.gz"
      sha256 "61079bdc0d9111eb9359fb1e3f47540e5248fa23ef932495739b91f5b10fdadd"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.7.0/git-credit-x86_64-apple-darwin.tar.gz"
      sha256 "69219c3d828edfb87e90edc2a8f66b64be32cacf83f1acffc6cf379cb9de51df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.7.0/git-credit-aarch64-unknown-linux-musl.tar.gz"
      sha256 "759061b0cade0578693bd1ae18c4f856cd65804ef7c78d57fccbb80c25f2f09b"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.7.0/git-credit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77c32d9f6c12ff61e7fbc89faa2ac733fbf59fd9b6410da6ba44dfb3cf577cc8"
    end
  end

  def install
    bin.install "git-credit"
  end

  test do
    system bin/"git-credit", "--version"
  end
end
