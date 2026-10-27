class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.11.0/sevalla-darwin-arm64.tar.gz"
      sha256 "8e726d8fd5aa8247bfffd551d510b9ffbf9e9d8041165deafa8c332c1a3b91cc"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.11.0/sevalla-darwin-x64.tar.gz"
      sha256 "aaffec10319bbc9b4eb6f17e397cf332ef11446937ee390cebf1088564e60e45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.11.0/sevalla-linux-arm64.tar.gz"
      sha256 "6af2561f656d3905a10057874840eeeef861020077c80ce70841a0b3d465351d"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.11.0/sevalla-linux-x64.tar.gz"
      sha256 "44e516b8895185e0c877a6e87d45fa47fbbc2773776f68b39d7f0aeef464a1cd"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
