# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.2"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.2/openctrlc-darwin-arm64.zip"
      sha256 "789a2012c3eb888481fd485e6cd9cffdf5905c2f191e5b03370763efcdd26685"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.2/openctrlc-darwin-x64.zip"
      sha256 "ab4af959b69b20176d29730f0192dcfd344d9f7250b2e42e90be718431b0723e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.2/openctrlc-linux-arm64.tar.gz"
      sha256 "c1a101de0ab833929c32a2c09175a06db28b5c5d41a181f1e7a0937d1b63300c"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.2/openctrlc-linux-x64.tar.gz"
      sha256 "4c85ae2124449f9f3a69e00eb15ba63124ca0177b773e13320403f68776ccb94"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
