# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.1"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.1/openctrlc-darwin-arm64.zip"
      sha256 "f60a808e1672ab68ee7fabfb1948376db9d436e8b56157878128b2487b06a3f7"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.1/openctrlc-darwin-x64.zip"
      sha256 "e24b7a4240a7982d74551bf86e704eda1e6dd3aa2cd31354307eb3b4dc13651f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.1/openctrlc-linux-arm64.tar.gz"
      sha256 "1a163954da60630758186b805f0a70044ea2663e57557f38ae245fc3ab4d71e8"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.1/openctrlc-linux-x64.tar.gz"
      sha256 "c6bae7fd9eb3e4844a41381e8061568eac34eb3e4eec6fe9c28f1a452701a650"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
