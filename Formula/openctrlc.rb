# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.11"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.11/openctrlc-darwin-arm64.zip"
      sha256 "5acd57cf3121ca1d1727a97cb2b36bd34bf0e9d7d02183339422686d07d62582"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.11/openctrlc-darwin-x64.zip"
      sha256 "76d85b73e965dbffb50fd969f99c0efc5ded5272aad622bedd3a1f72e45687a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.11/openctrlc-linux-arm64.tar.gz"
      sha256 "9b6a509e11bcee33073cb2f0e6a8b3f747a52fe891383330fc92d0f8653bc206"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.11/openctrlc-linux-x64.tar.gz"
      sha256 "2800fab27a32659c534c8ed05b63fa8d2d16aba642f05b41f7303f360044aa5f"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
