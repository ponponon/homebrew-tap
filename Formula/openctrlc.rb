# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.6"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.6/openctrlc-darwin-arm64.zip"
      sha256 "aea7eb2da1ae7c108cf232ea9ae99f694de9f6679b2a19471ead79feee6c2c75"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.6/openctrlc-darwin-x64.zip"
      sha256 "2392361640593a2657699353fe6248c55af9abea215fbda821846053b9575de1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.6/openctrlc-linux-arm64.tar.gz"
      sha256 "2dbe4a480b4ccc71abf7be5dd84df6b87466204f9551f57125349c1f955479b1"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.6/openctrlc-linux-x64.tar.gz"
      sha256 "beac24a1473a4fee35fcb57c18333282c88feca76e2d34e4baf477ad952efbb3"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
