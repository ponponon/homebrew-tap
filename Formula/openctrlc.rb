# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.15"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.15/openctrlc-darwin-arm64.zip"
      sha256 "bc656d465300cd1adf7e8c803ca1a8b8b89d7c3e5b0c25d39c74181c39e4f546"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.15/openctrlc-darwin-x64.zip"
      sha256 "a605bb4a8e2ef0f34d7d2b38e3433d8b740eae5831ecb08730cec39d4fbe7177"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.15/openctrlc-linux-arm64.tar.gz"
      sha256 "bce220dd9a3442293ed8474b4366aa26af1d56bc9c2224772186305241a89887"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.15/openctrlc-linux-x64.tar.gz"
      sha256 "8f628cfc59bd404ec8eb8dbfbe561038f59bc73fe605a0e19159ff457ab15db7"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
