class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.6.0/sevalla-darwin-arm64.tar.gz"
      sha256 "f808aaa8aa939b9a512ab803c9621420882e33b9d1bfdcf131afa1d76927fad9"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.6.0/sevalla-darwin-x64.tar.gz"
      sha256 "533c5fa6975e3da8642c9d166c603a567d65dc5f8eaa2a0460a7f1cfe3ae030b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.6.0/sevalla-linux-arm64.tar.gz"
      sha256 "615a0053f6d0544c65826da5448a40fe10f2f77275b14dfdc32b108353f05834"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.6.0/sevalla-linux-x64.tar.gz"
      sha256 "ff8e28b7d5721252441ef8aa96cd1ed274fcb3a33a8ee72dfdd332e925f040d9"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
