class Gloss < Formula
  desc "Command glossary and alias helper"
  homepage "https://github.com/Architeg/gloss"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-darwin-arm64.zip"
    sha256 "9ea5afb1267a940959bd0de288c26eb16b35e3ffa5336504080f0a8d7920fd35"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-darwin-amd64.zip"
    sha256 "d59b23bfcdc24639219262c27266054c96c65bc8e270106e975010d797fff730"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-linux-amd64.zip"
    sha256 "cd583184e306fb740538c73f7fab616bc4830cd1136bb55a296ca5dac7a30a45"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-linux-arm64.zip"
    sha256 "0ba8fb048fae6d8520c7ae5805b092db297eef98c11ad39a815eca7d18ef6ad9"
  end

  def install
    bin.install Dir["gloss-*"].first => "gloss"
  end

  test do
    assert_match "gloss #{version}", shell_output("#{bin}/gloss version") 
  end
end
