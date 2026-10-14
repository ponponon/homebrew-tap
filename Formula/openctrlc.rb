# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.9"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.9/openctrlc-darwin-arm64.zip"
      sha256 "d04137857d4151e9fd35f64cc4d703e87661db099e8cc1a70ee1d1cb2b7a6066"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.9/openctrlc-darwin-x64.zip"
      sha256 "d54222b407706e83c1139917efe11471cff018e49daf966bfb0a44b83938e3a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.9/openctrlc-linux-arm64.tar.gz"
      sha256 "0352a77d183a29c6414899db0e4ee89bb9206ef3b064a80fab8dadac09532440"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.9/openctrlc-linux-x64.tar.gz"
      sha256 "78b91735417a7e0276e820c7dbe6c007fdc42c843b6b78ac9f95f866e952cad6"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
