require "formula"

class OpenWith < Formula
  desc "A small utility to specify which application bundle should open specific file extensions on macOS"
  homepage "https://github.com/jdek/openwith"
  url "https://github.com/spotim/fed-cli/releases/download/v0.1.4/fed-cli-darwin-amd64-0.1.4.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c4bb34abd18ef743572c085fcbaf0a4d5c0770a7c889ae5ce422213bb35e80d4"
  head "https://github.com/jdek/openwith.git"

  def install
    bin.install "openwith"
  end

  # Homebrew requires tests.
  test do
    assert_match "usage: openwith <bundle> [extension ...]", shell_output("#{bin}/openwith", 2)
  end
end
