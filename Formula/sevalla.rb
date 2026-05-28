class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.10.0/sevalla-darwin-arm64.tar.gz"
      sha256 "13b4c1c9c19d7c61bfc086cfeae09bf35f43817c0009618c24caca0eb8c729ad"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.10.0/sevalla-darwin-x64.tar.gz"
      sha256 "012fe7e6a49566cb746353194c28a3cb1c6aa3629b5dd203c5eb377b72bbec8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.10.0/sevalla-linux-arm64.tar.gz"
      sha256 "0684c82a96a2684d4190d9433d8bb9f0d77f01f0cd514c24af670126a05f2a56"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.10.0/sevalla-linux-x64.tar.gz"
      sha256 "8beee30c1ecd265c0f508a4a1f973a0d8563811dce8bd71afc83f05a46a99f55"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
