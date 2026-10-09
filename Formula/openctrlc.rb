# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "1.1.5"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.5/openctrlc-darwin-arm64.zip"
      sha256 "2ced543df6d04fb828fe45606263a07a7e76c3d226d5d9821914e23b23eb3fce"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.5/openctrlc-darwin-x64.zip"
      sha256 "82992696d4d1fe8efdc4ba141a06c80c223911e10df1614932d6d2f4e1e311ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.5/openctrlc-linux-arm64.tar.gz"
      sha256 "6d9f260a49f9db2122d2566c74dca9726ea09b1966116a7197f9f674975ce722"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v1.1.5/openctrlc-linux-x64.tar.gz"
      sha256 "6d9f865769680058a10b84f0c00fd09ba07edb89144b5365be2c7415192e611a"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
