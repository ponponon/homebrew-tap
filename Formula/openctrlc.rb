# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.0.1"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.0.1/openctrlc-darwin-arm64.zip"
      sha256 "42e7a28f68aaa1bc66c9090cf6bb17747ed8110f364d43bc1abcf01372f9b945"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.0.1/openctrlc-darwin-x64.zip"
      sha256 "6b76ee083a52c70693ec89f310bd0d31b3fca4f8b2d684483da193380281f87d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.0.1/openctrlc-linux-arm64.tar.gz"
      sha256 "95de8091a3ac3cdb62f6203b6afa6c8ab23d5dd4d08b00409bc67ceec358a2d1"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.0.1/openctrlc-linux-x64.tar.gz"
      sha256 "2bf92c0eedb8f6393b3b020b5f3e584ad9887e9de3e5ff93a55947e53b1583c6"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
