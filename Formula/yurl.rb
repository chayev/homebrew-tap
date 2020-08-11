class Yurl < Formula
  desc "AASA / Universal Links Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.2.0"
  bottle :unneeded
  license "MIT"

  url "https://github.com/chayev/yurl/releases/download/v0.2.0/yurl-v0.2.0-macOS-amd64.tar.gz"
  sha256 "2f5e068cf65308fce6142a74d609f97de88f9511e73cf9e2f716a3b0ff761a1c"

  
  def install
    bin.install "yurl"
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
