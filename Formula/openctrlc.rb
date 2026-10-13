# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.8"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.8/openctrlc-darwin-arm64.zip"
      sha256 "9933ff9987f3d4ff19c00c83768aee8e589c9fb22f8605ed91c684b37c956dea"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.8/openctrlc-darwin-x64.zip"
      sha256 "7e6889365f918065ae6cfaa406e267e79198133d4ddc4252936eab9b5be4dca6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.8/openctrlc-linux-arm64.tar.gz"
      sha256 "f027f48c7077854940583fb980eedcfbcd7d2bd422823d68bcaef7e2965b8c50"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.8/openctrlc-linux-x64.tar.gz"
      sha256 "1d68976a627b85635fc1cd79c0db82bd3f01d67c097f7a0550e409cc6f19d7f5"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
