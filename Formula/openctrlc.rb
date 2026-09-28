# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.0"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.0/openctrlc-darwin-arm64.zip"
      sha256 "6358b41ac2cec6f74285441269406157c535e494e31856d9ec434713e969d12e"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.0/openctrlc-darwin-x64.zip"
      sha256 "20ea141f088fec3fae80238518a8468448f45ca4f4c5d83b8251668d20af8bff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.0/openctrlc-linux-arm64.tar.gz"
      sha256 "252b7c8efab70132f9c9bf7a654ad6c31f50ba0546c81b61b76b750b53b30146"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.0/openctrlc-linux-x64.tar.gz"
      sha256 "79452a0e37dab67ccf00f859210e2ae994b73907e28963dd9f8536a210b72f6e"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
