class Tatuin < Formula
  desc "Task Aggregator TUI for N providers"
  homepage "https://github.com/panter-dsd/tatuin"
  url "https://github.com/panter-dsd/tatuin/archive/refs/tags/v0.17.1.tar.gz"
  sha256 "c44cdf08d05c5d0019658fd5cbfe7a46284c5420d0856599c9ae3649e1111556"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/tatuin --version")
  end
end
