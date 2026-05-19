class GitCredit < Formula
  desc "Precise per-author contribution stats that see through squash merges"
  homepage "https://github.com/mscheltienne/git-credit"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.5.0/git-credit-aarch64-apple-darwin.tar.gz"
      sha256 "b786747b4f08029896821f0e4393ecaa7f769d0d986005f3e4027301708dc67d"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.5.0/git-credit-x86_64-apple-darwin.tar.gz"
      sha256 "3c80edfef64ca5f8b66c58fc17392e0dbb24e270c5573c5f2c5e593a0e966699"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.5.0/git-credit-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b87d50ad1b0674b8f974a063282b9ba3479583067d41accc7ac95142a4f7ba4c"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.5.0/git-credit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86bd1c4261bb5029460578b27e659b52d3fb406ca211a988409128ba4e2ecb13"
    end
  end

  def install
    bin.install "git-credit"
  end

  test do
    system bin/"git-credit", "--version"
  end
end
