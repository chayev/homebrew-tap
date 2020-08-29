# This file was generated by GoReleaser. DO NOT EDIT.
class Yurl < Formula
  desc "Universal Links / AASA File Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chayev/yurl/releases/download/v0.3.0/yurl-v0.3.0-macos-amd64.tar.gz"
    sha256 "fce5be495be63b58a19229670a761061556039ad8213aaa5724cedaed9843ffc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chayev/yurl/releases/download/v0.3.0/yurl-v0.3.0-linux-amd64.tar.gz"
      sha256 "e5bc7ba90e91bf595e827691abfcca4784258de4af9d54ee4da66c5cd6513bbe"
    end
  end

  def install
    bin.install "yurl"
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
