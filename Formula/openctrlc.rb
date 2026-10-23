# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.13"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.13/openctrlc-darwin-arm64.zip"
      sha256 "3dc23baebadffb8885467cc9d157a26c8f5a3a966561753121d3c2357f3da449"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.13/openctrlc-darwin-x64.zip"
      sha256 "d012e97dca8b7e25d6676ce030b9a7e69e70a4d6a22e2efcd33251244633684f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.13/openctrlc-linux-arm64.tar.gz"
      sha256 "97cfbbc2a01f99a0ae180e66eec71f241edf54c1f54caf4428f8bceca73670c9"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.13/openctrlc-linux-x64.tar.gz"
      sha256 "759cbd1c2368fb418685c74ebd64831e74c99ec6bd0f051ddf093a2b5bcaaa15"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
