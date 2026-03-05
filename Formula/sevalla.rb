class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.1/sevalla-darwin-arm64.tar.gz"
      sha256 "3e8fbe3fe9943a45f15c8c696623e0165c946643de81c85fa6e346a7f2ac8c85"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.1/sevalla-darwin-x64.tar.gz"
      sha256 "915fd47c3749f8da1dc32946cabafe49a03384b90c2e8390ae18ef4ac031680d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.1/sevalla-linux-arm64.tar.gz"
      sha256 "3258f10ee1e371ff29fd36d35bbe69059e6633e2df29540cf19aa060fb72b10d"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.1/sevalla-linux-x64.tar.gz"
      sha256 "ec104f8f9ade7a4405276c0a82ef1e09b9d0d736bc88f649f74a48285c098427"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
