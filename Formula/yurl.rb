class Yurl < Formula
  desc "AASA / Universal Links Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.1.0"
  bottle :unneeded
  license "MIT"

  url "https://github.com/chayev/yurl/releases/download/v0.1.0/yurl-v0.1.0-macOS-amd64.tar.gz"
  sha256 "6855122671874827969ae1a3b4cc411dbe654de82f1f0a742339da5f72f0ede9"

  
  def install
    bin.install "yurl"
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
