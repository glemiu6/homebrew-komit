class Komit < Formula
  desc "AI-powered git commit message generator using local LLMs"
  homepage "https://github.com/glemiu6/komit"
  url "https://github.com/glemiu6/komit/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "YOUR_SHA256_HERE"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    system "pip3", "install", *std_pip_args, "."
  end

  test do
    system "#{bin}/komit", "--version"
  end
end