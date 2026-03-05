class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.3.0/sevalla-darwin-arm64.tar.gz"
      sha256 "c712c088337a63a7c372ff8979ad07840a7472b66fe670250ded5696d67469eb"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.3.0/sevalla-darwin-x64.tar.gz"
      sha256 "d1c7169930409849fb30409cdafeaa2903d60083d05bd361b322d0c184995b02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.3.0/sevalla-linux-arm64.tar.gz"
      sha256 "41a84c6cf7286702b23648e63243f99f9ed2d45361368880679d509ee9f48f41"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.3.0/sevalla-linux-x64.tar.gz"
      sha256 "41afaadc9542374367119ffa271dafc5c877ebb26ffb734cf82e7fb64d5a49d7"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
