class Komit < Formula
  desc "AI-powered git commit message generator using local LLMs"
  homepage "https://github.com/glemiu6/komit"
  url "https://github.com/glemiu6/komit/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "16e761e22ee25730de26d928564817e66a69d607ff6aef314ff5176d2adaca74"
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