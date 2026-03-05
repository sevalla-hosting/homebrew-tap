class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.0/sevalla-darwin-arm64.tar.gz"
      sha256 "7c6aedeed4d981aad3a9e97f765225089a2066bf5f28b37cf0d92f1c5587ab9d"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.0/sevalla-darwin-x64.tar.gz"
      sha256 "bf8702a4c77a1b64f56099aa6bc7410b9a4f5a358ffa14c6ffa0543fdcc0196d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.0/sevalla-linux-arm64.tar.gz"
      sha256 "61f041ac04715b3044e370e2e63f61928d246da30c2327e54c7dc3f4cbcb1a6e"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.0/sevalla-linux-x64.tar.gz"
      sha256 "9c71de8e8caea1a389a2311d23cf2ffaf3a8d99cdbb6e19ae0dbd36c2fd16905"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
