# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.12"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.12/openctrlc-darwin-arm64.zip"
      sha256 "4d91e805efd6e292faa8201676e3ff22c60559c1e856a5700f595118d2fc52b9"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.12/openctrlc-darwin-x64.zip"
      sha256 "a7612962a50566bfe01e728a39c51d6872d72ef54fa4e65e088f1cd26734d429"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.12/openctrlc-linux-arm64.tar.gz"
      sha256 "011bd08b1808d366fe862dcee49648cc2bbfb61f56fa6d2ca224455bb787f2c9"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.12/openctrlc-linux-x64.tar.gz"
      sha256 "52e8f4c29c82b49c102de3d81f9df57b4c595857ea1c2618fcf208256537bd34"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
