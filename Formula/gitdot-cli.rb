class GitdotCli < Formula
  desc "Command-line interface for gitdot"
  homepage "https://gitdot.io"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkdevs/gitdot/releases/download/gitdot-cli-v0.1.0/gitdot-cli-aarch64-apple-darwin.tar.gz"
      sha256 "00f5791ff18624c5ea875d265fc8d310f03a38479e627933bf8ba5b2a6b6329b"
    else
      url "https://github.com/bkdevs/gitdot/releases/download/gitdot-cli-v0.1.0/gitdot-cli-x86_64-apple-darwin.tar.gz"
      sha256 "bb0ec5f8c2a06fba354cc0718ec706af95ca316fec76fca23736e1edacc7dd7e"
    end
  end

  def install
    bin.install "dot"
  end

  test do
    system "#{bin}/dot", "--help"
  end
end
