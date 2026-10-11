# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.7"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.7/openctrlc-darwin-arm64.zip"
      sha256 "803c92a97454648f866e224ad1361c77a276c34bd78db7d90e7eecbc4273b12d"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.7/openctrlc-darwin-x64.zip"
      sha256 "d6824cbec82fe75ba95512fdb97aa19e830416c84f263e0648a21531fc3900bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.7/openctrlc-linux-arm64.tar.gz"
      sha256 "89ab6c8ce8a577b97545faf73ba98239804becf80df7bd0a6916dd1eab7d20f7"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.7/openctrlc-linux-x64.tar.gz"
      sha256 "2cdb750d0237d119d5b29c4ae5b8be88b7a54d263eb002d6f89f986468cc92cc"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
