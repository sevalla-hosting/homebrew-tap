class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.10.1/sevalla-darwin-arm64.tar.gz"
      sha256 "c5e6e9dd347b3f7c560f21e39d52fada16a48b2123a6345007ba5320af38664a"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.10.1/sevalla-darwin-x64.tar.gz"
      sha256 "150f1d11c6fb7a9661f035d0d25e97e2ba483f59cc68d21d7b0dde4be6ce5afc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.10.1/sevalla-linux-arm64.tar.gz"
      sha256 "1ac9dd6832115e7c0521cdea58cb2209f875fdfde3c88bc251a29ca66102deb0"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.10.1/sevalla-linux-x64.tar.gz"
      sha256 "60d1a87af145fd9d288d092985d22f4a01a5022bdfd68105fe9cad2a3cb05652"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
