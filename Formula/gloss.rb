class Gloss < Formula
  desc "Command glossary and alias helper"
  homepage "https://github.com/Architeg/gloss"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.1/gloss-darwin-arm64.zip"
    sha256 "6224a8c1c421be199746269c6ab7b5843a02f0c8a50a42ddfa984e8f8ffafbd9"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.1/gloss-darwin-amd64.zip"
    sha256 "7afaea937078dc9361ea183471bc222bb46ea57a2ce0607fdf41d6594ab1ba6d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.1/gloss-linux-amd64.zip"
    sha256 "37e8a005413f1aaaf66acee1fe2969b8cd7249e29cbe088593243bfdc1b9b096"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Architeg/gloss/releases/download/v0.1.1/gloss-linux-arm64.zip"
    sha256 "1e72599168d59993ea7c764ea72e52aec9734dfa1759d5678fbcad8b7cd8ec81"
  end

  def install
    bin.install Dir["gloss-*"].first => "gloss"
  end

  test do
    assert_match "gloss #{version}", shell_output("#{bin}/gloss version")
  end
end
