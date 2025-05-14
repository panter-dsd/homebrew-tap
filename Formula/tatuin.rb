class Tatuin < Formula
  desc "Tatuin (Task Aggregator TUI for N providers)"
  homepage "https://github.com/panter-dsd/tatuin"
  url "https://github.com/panter-dsd/tatuin/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "b7761a3617f6657b91760479932dad5305e6069caaa1fdf6f1970822ef6bf5e1"
  license "MIT"
  version "0.7.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/tatuin --version")
  end
end
