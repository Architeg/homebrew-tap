class Gloss < Formula
  desc "Command glossary and alias helper"
  homepage "https://github.com/Architeg/gloss"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-darwin-arm64.zip"
    sha256 "97aadee2ab362f11e210653af95d08ab9835e5520c581aacc944b89ce4db61e4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-darwin-amd64.zip"
    sha256 "af5d25486a1812e4f91cc4d5212a3bf079b451d656e433e90aaa7ada0dc78da7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-linux-amd64.zip"
    sha256 "14b726ccf3edf8d0d904cce4c27baaf69c04d350d20737381012384b134d1d65"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-linux-arm64.zip"
    sha256 "bd0ae79b381a618e7a2c994721a196f87bf816def639c339ff4aa38867c2029e"
  end

  def install
    bin.install Dir["gloss-*"].first => "gloss"
  end

  test do
    assert_match "gloss #{version}", shell_output("#{bin}/gloss version")
  end
end
