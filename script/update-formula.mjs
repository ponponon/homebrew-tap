import { appendFile, readFile, writeFile } from "node:fs/promises"

const response = await fetch("https://api.github.com/repos/ponponon/openctrlc/releases/latest", {
  headers: { Accept: "application/vnd.github+json" },
})
if (!response.ok) throw new Error(`GitHub release lookup failed: ${response.status} ${response.statusText}`)

const release = await response.json()
const version = release.tag_name?.match(/^v(\d+\.\d+\.\d+)$/)?.[1]
if (!version || release.draft || release.prerelease) throw new Error("Latest release is not a stable semantic version")

function assetSha(name) {
  const digest = release.assets.find((asset) => asset.name === name)?.digest
  if (!/^sha256:[a-f0-9]{64}$/.test(digest ?? "")) throw new Error(`Release asset ${name} has no SHA-256 digest`)
  return digest.slice("sha256:".length)
}

const formula = `# typed: false
# frozen_string_literal: true

class Openctrlc < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://github.com/ponponon/openctrlc"
  version "${version}"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v${version}/openctrlc-darwin-arm64.zip"
      sha256 "${assetSha("openctrlc-darwin-arm64.zip")}"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v${version}/openctrlc-darwin-x64.zip"
      sha256 "${assetSha("openctrlc-darwin-x64.zip")}"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ponponon/openctrlc/releases/download/v${version}/openctrlc-linux-arm64.tar.gz"
      sha256 "${assetSha("openctrlc-linux-arm64.tar.gz")}"
    end
    on_intel do
      url "https://github.com/ponponon/openctrlc/releases/download/v${version}/openctrlc-linux-x64.tar.gz"
      sha256 "${assetSha("openctrlc-linux-x64.tar.gz")}"
    end
  end

  def install
    bin.install "openctrlc"
  end

  test do
    assert_match "show help", shell_output("#{bin}/openctrlc --help")
  end
end
`

const path = new URL("../Formula/openctrlc.rb", import.meta.url)
const current = await readFile(path, "utf8")
const changed = current !== formula
if (changed) await writeFile(path, formula)
if (process.env.GITHUB_OUTPUT) await appendFile(process.env.GITHUB_OUTPUT, `version=${version}\nchanged=${changed}\n`)
console.log(changed ? `Updated Homebrew Formula to v${version}` : `Homebrew Formula is already current at v${version}`)
