class Yurl < Formula
  desc "AASA / Universal Links Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.1.1"
  bottle :unneeded
  license "MIT"

  url "https://github.com/chayev/yurl/releases/download/v0.1.1/yurl-v0.1.1-macOS-amd64.tar.gz"
  sha256 "4cee766650d72aae8d7afcee100f79671ba8fe57bfa684b66f0423643576d912"

  
  def install
    bin.install "yurl"
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
