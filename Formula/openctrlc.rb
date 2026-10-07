# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.3"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.3/openctrlc-darwin-arm64.zip"
      sha256 "36c36204e9cdfe3b38e1bf0caab150f91a9f565cc93179eab3793d0eefc29a06"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.3/openctrlc-darwin-x64.zip"
      sha256 "2c7d2f57902e2508c977640613fb121e9c6da2f2aeaac377a023ecf2a5c9fc92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.3/openctrlc-linux-arm64.tar.gz"
      sha256 "736da89ea75bc2e6d09db7cd1cc32f6827f8eae08f113bae1500798e8bf06787"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.3/openctrlc-linux-x64.tar.gz"
      sha256 "8073d8232675e887dcae7ffa2f2eb57097f7959fcfc494bad8f485cf25655ec6"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
