class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla-hosting/cli"
  version "1.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.2/sevalla-darwin-arm64.tar.gz"
      sha256 "eedde64fb3627993486c48a5282844a98709d9f4554649633d8dc87ff3b10b1b"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.2/sevalla-darwin-x64.tar.gz"
      sha256 "a58e96a06b82706fc4fc0cbddccc35479c4dfeda1db0d641740b9c6515e0dba1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.2/sevalla-linux-arm64.tar.gz"
      sha256 "9dac75813d79d8ae6fe494c61c54312d302d066e479130ea5e249f926ffbb9f8"
    end
    on_intel do
      url "https://github.com/sevalla-hosting/cli/releases/download/v1.7.2/sevalla-linux-x64.tar.gz"
      sha256 "3add097f963d307696ae66a9c61d43e0b58dbff6833d751629b9e03fe4f859ec"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
