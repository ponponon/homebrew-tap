# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.4"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.4/openctrlc-darwin-arm64.zip"
      sha256 "371144942b52d12e9c7121d4523ec078662b11075c14379425e76dc5335a807f"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.4/openctrlc-darwin-x64.zip"
      sha256 "99527e5a09b440d0dfdb22c5bc03881c3e24fc737c9c9ed94d6eb5fdace75692"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.4/openctrlc-linux-arm64.tar.gz"
      sha256 "04b0c095b7fa9a585890402aa59ecc7bbf1a96236a071131351df68d95d62dcc"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.4/openctrlc-linux-x64.tar.gz"
      sha256 "30ef191001804890000415bb8edce33b16b4bfb5b9a45178ead6db2dfa17d4e4"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
