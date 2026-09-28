# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.0.2"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.0.2/openctrlc-darwin-arm64.zip"
      sha256 "b4ae169f869e9dc34d3e7556f0d47f3530c97afa010576a2b339a2105dccf383"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.0.2/openctrlc-darwin-x64.zip"
      sha256 "9b893402c8592a096e5378ac60cd79d75d7a93e66d16b6d6b92da3a97938de26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.0.2/openctrlc-linux-arm64.tar.gz"
      sha256 "fb4ffef931907a4676a89b5982a2ca2eb7d76651567d2e6b292f277a5b66dda5"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.0.2/openctrlc-linux-x64.tar.gz"
      sha256 "5307c660b45f9f0d9a5e0b1adfb249ccfb67784d4ea0862511b7df383bebd1ed"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
