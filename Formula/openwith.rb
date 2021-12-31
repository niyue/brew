require "formula"

class OpenWith < Formula
  desc "A small utility to specify which application bundle should open specific file extensions on macOS"
  homepage "https://github.com/jdek/openwith"
  url "https://github.com/jdek/openwith/releases/download/v0.0.1/openwith-v0.0.1.tar.xz"
  sha256 "993481ec90786d84aecbb8321c951aa9879aa53d6ca4c95190ccebd2d571acb3"
  license "Unlicense"

  def install
    bin.install "openwith"
  end

  # Homebrew requires tests.
  test do
    assert_match "usage: openwith <bundle> [extension ...]", shell_output("#{bin}/openwith", 2)
  end
end
