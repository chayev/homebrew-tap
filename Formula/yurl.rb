# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yurl < Formula
  desc "Universal Links / AASA File Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.7.3"

  on_macos do
    url "https://github.com/chayev/yurl/releases/download/v0.7.3/yurl-v0.7.3-macos-amd64.tar.gz"
    sha256 "18680ad6852f37168006f88e6c55340317c953835fad41bc8a4ccd8bc19e9814"

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
      url "https://github.com/chayev/yurl/releases/download/v0.7.3/yurl-v0.7.3-linux-amd64.tar.gz"
      sha256 "da226eedb3cd45281a56d62d21f3a11875504b4af6e3c63a24085e0131ad76ee"

      def install
        bin.install "yurl"
      end
    end
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
