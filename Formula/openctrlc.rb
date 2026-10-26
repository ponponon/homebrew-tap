# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.14"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.14/openctrlc-darwin-arm64.zip"
      sha256 "ddc688189a3773829e258368e8c6b13a86421916c79b39f53f190a33bcb56501"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.14/openctrlc-darwin-x64.zip"
      sha256 "aa39e8002a81b906c77d4d43b42e8b78da0cbca9a811a67a279aebabd20c5656"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.14/openctrlc-linux-arm64.tar.gz"
      sha256 "f33de37d03de8a4cab6eb6ee01981972769d6d524831ca9a77add4e94b79c8ff"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.14/openctrlc-linux-x64.tar.gz"
      sha256 "eea2a1820bcf0a13bdc3bbaeb2f59a092cf9e0dc996a41925849e993f4742f5e"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
