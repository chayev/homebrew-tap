# This file was generated by GoReleaser. DO NOT EDIT.
class Yurl < Formula
  desc "Universal Links / AASA File Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.3.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chayev/yurl/releases/download/v0.3.2/yurl-v0.3.2-macos-amd64.tar.gz"
    sha256 "bafd3d6bc258a36d95f85221d4293912f1f109459f75a9efc8ca2638515329a2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chayev/yurl/releases/download/v0.3.2/yurl-v0.3.2-linux-amd64.tar.gz"
      sha256 "aef7fbacf0617defe903c983306e2eb70059e636d437eb93e2e25a9ab810f711"
    end
  end

  def install
    bin.install "yurl"
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
