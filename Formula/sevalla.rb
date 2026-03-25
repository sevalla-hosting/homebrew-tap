class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.8.0/sevalla-darwin-arm64.tar.gz"
      sha256 "c26272233043603c0408f34e4ceba1de268349d5f36e5433edb188df346b7279"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.8.0/sevalla-darwin-x64.tar.gz"
      sha256 "f0f5ec7aea1947b122dc36ad7ce67078be75fc89a56d09f8e1eaec4da78d3425"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.8.0/sevalla-linux-arm64.tar.gz"
      sha256 "7bf15b38e7ead657b54a30a38a7bbcf8798cbbe7633ce498b56bf88b350b0642"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.8.0/sevalla-linux-x64.tar.gz"
      sha256 "ce5ef3b333d33c94b712f18f5cf136c5949e5cce299df0eaf01bf3f82052e24b"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
