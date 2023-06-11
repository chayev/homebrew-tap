# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yurl < Formula
  desc "Universal Links / AASA File Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.8.5"

  on_macos do
    url "https://github.com/chayev/yurl/releases/download/v0.8.5/yurl-v0.8.5-macos-amd64.tar.gz"
    sha256 "9d2fc8dc470a1671dec4d7dba729b64c56054e31acd4789bbe8ea042a943c09f"

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
      url "https://github.com/chayev/yurl/releases/download/v0.8.5/yurl-v0.8.5-linux-amd64.tar.gz"
      sha256 "f9ef06229374473b0c8222816190bdba3ca762047ca4f049a608eeaa7df5468c"

      def install
        bin.install "yurl"
      end
    end
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
