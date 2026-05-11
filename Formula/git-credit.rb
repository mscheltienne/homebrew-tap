class GitCredit < Formula
  desc "Precise per-author contribution stats that see through squash merges"
  homepage "https://github.com/mscheltienne/git-credit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.3.0/git-credit-aarch64-apple-darwin.tar.gz"
      sha256 "d5250d26b7e44402854e12157494bbed9919f4e90b65930b0f7af473b840f198"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.3.0/git-credit-x86_64-apple-darwin.tar.gz"
      sha256 "33b576f84f4d2d6fd6effce51961c684a60a7956df611dca62053b9b3dff56b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.3.0/git-credit-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a6ad9a666fb8d47f41550a9f3d55505b20a27dea174ef00af88f912490e61a5"
    end
    on_intel do
      url "https://github.com/mscheltienne/git-credit/releases/download/0.3.0/git-credit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d88e66fb739b3adb9965739a3c7282dc1bf3d0b4f9b40bad072347ca578548a"
    end
  end

  def install
    bin.install "git-credit"
  end

  test do
    system bin/"git-credit", "--version"
  end
end
