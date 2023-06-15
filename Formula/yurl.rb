# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yurl < Formula
  desc "Universal Links / AASA File Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.8.11"

  on_macos do
    url "https://github.com/chayev/yurl/releases/download/v0.8.11/yurl-v0.8.11-macos-amd64.tar.gz"
    sha256 "03e06adf1c663173eb7fc90f8daec68a06351911343439dc4b109491058ac3ec"

    def install
      bin.install "yurl"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Yurl
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chayev/yurl/releases/download/v0.8.11/yurl-v0.8.11-linux-amd64.tar.gz"
      sha256 "c7f6fd32cc712c5526ed6d93a3045f11f627634cd9989b1ae076caf0f08f097c"

      def install
        bin.install "yurl"
      end
    end
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
