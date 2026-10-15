# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.10"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.10/openctrlc-darwin-arm64.zip"
      sha256 "bb5f8f340208ea5daa754bc86ce032577988460c23eb3aa4a0039fdbd1506a49"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.10/openctrlc-darwin-x64.zip"
      sha256 "15bf57ffb13db870b5e6777e7b3a3943a5b01935d898b5f9fd8130e86ff48c1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.10/openctrlc-linux-arm64.tar.gz"
      sha256 "2779583971b2f3ea1b8259129251cbd29680984cac0a9dccb136a181ef08f7cd"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.10/openctrlc-linux-x64.tar.gz"
      sha256 "2031398e92e5745efc72d22b3a64af4f046b504e3a769728280ce46252710730"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
