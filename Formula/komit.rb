class Komit < Formula
  desc "AI-powered git commit message generator using local LLMs"
  homepage "https://github.com/glemiu6/komit"
  url "https://github.com/glemiu6/komit/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "d3712435de96c5c294d48c137c4592870e6fec5b6db0a1c0ff3db66223a2d74d"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    system "pip3", "install", *std_pip_args, "."

    # Install shell completions
    bash_completion.install "completions/komit.bash"
    zsh_completion.install "completions/_komit"
    fish_completion.install "completions/komit.fish"
  end

  test do
    system "#{bin}/komit", "--version"
  end
end