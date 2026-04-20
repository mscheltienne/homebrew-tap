class GitCredit < Formula
  desc "Precise per-author contribution stats that see through squash merges"
  homepage "https://github.com/mscheltienne/git-credit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.1.0/git-credit-aarch64-apple-darwin.tar.gz"
      sha256 "1034d351a77cc2422dd102513103300f9b3bef6cbde10220ed453bf0021879c5"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.1.0/git-credit-x86_64-apple-darwin.tar.gz"
      sha256 "788a317732e79735eb16c8508ab9ccf39360286690ffc4446e21043cac33e9df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.1.0/git-credit-aarch64-unknown-linux-musl.tar.gz"
      sha256 "618f0b2c58364d5080ffc8a6def1248111365faa9a2c3124f822ac0b8257d18f"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.1.0/git-credit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "378c9dea9b425c47a3206d2ac9b33fc01d6e0d11988ac8efe9870184e433d8f3"
    end
  end

  def install
    bin.install "git-credit"
  end

  test do
    system bin/"git-credit", "--version"
  end
end
