# This file was generated by GoReleaser. DO NOT EDIT.
class Odinlink < Formula
  desc "Utility for OneLink API."
  homepage "https://github.com/chayev/odinlink"
  version "0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chayev/odinlink/releases/download/v0.3.0/odinlink-v0.3.0-macos-amd64.tar.gz"
    sha256 "3083ea49353e44a93903dac8133fd38799014198597be1b2e1a7e790e14f3be4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chayev/odinlink/releases/download/v0.3.0/odinlink-v0.3.0-linux-amd64.tar.gz"
      sha256 "95737c4859aa2e12eeaac2278692588949d0c42e93ec09d3570b4241d217ff62"
    end
  end

  def install
    bin.install "odinlink"
  end

  test do
    system "#{bin}/odinlink", "help"
  end
end
