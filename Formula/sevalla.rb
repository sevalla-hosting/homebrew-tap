class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.9.0/sevalla-darwin-arm64.tar.gz"
      sha256 "4c08dbd94523d97e5f6293fcce7f9139a8a43172f0e980efae8e61389f0208b6"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.9.0/sevalla-darwin-x64.tar.gz"
      sha256 "0a17ee2eb6511e7a4cd47868a8c970095e33cfdbce09c9edbe8e7fb63989028b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.9.0/sevalla-linux-arm64.tar.gz"
      sha256 "f00bd841ce765d7d9b97e86c573b298ec63ec3bf7688c7e0c550e1b65c2a33f5"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.9.0/sevalla-linux-x64.tar.gz"
      sha256 "90e3766487a4e1d0abf86596b31e6b670b1796448eec2a5554649bcc8747a2f1"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
