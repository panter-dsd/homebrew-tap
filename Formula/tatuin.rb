class Tatuin < Formula
  desc "Task Aggregator TUI for N providers"
  homepage "https://github.com/panter-dsd/tatuin"
  url "https://github.com/panter-dsd/tatuin/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "9c5f778abed2db9c1661ea8ec202bf9d9daafe92155ee9996fc7a36c1e168401"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/tatuin --version")
  end
end
