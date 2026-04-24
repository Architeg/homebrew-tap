class Gloss < Formula
  desc "Command glossary and alias helper"
  homepage "https://github.com/Architeg/gloss"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url 
"https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-darwin-arm64.zip"
    sha256 "38c5e03c4ef6600d80ba05b22c05a1c3b3258655e8cd5cd6e008bfeedd476035"
  elsif OS.mac? && Hardware::CPU.intel?
    url 
"https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-darwin-amd64.zip"
    sha256 "9219fc2d3fdaa50c8bdf8d8bce14feb59a83960de08291ad3faf0575d166ccf3"
  elsif OS.linux? && Hardware::CPU.intel?
    url 
"https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-linux-amd64.zip"
    sha256 "80ec6157e3fef2a3f90a07e8a00b79edbd22b66bd3e82a3c9f116a736560bf8a"
  elsif OS.linux? && Hardware::CPU.arm?
    url 
"https://github.com/Architeg/gloss/releases/download/v0.1.0/gloss-linux-arm64.zip"
    sha256 "7c76648960add327bcb7a8df3615a86ff4941d3c4faee9c97d24fa456e6315b9"
  end

  def install
    bin.install Dir["gloss*"].first => "gloss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gloss version")
  end
end
